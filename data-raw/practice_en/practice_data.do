*****************************************************
*	Creating the SOEP practice dataset 			    *
*	with v36 Data (2015-2019)						*
*   This dataset contains:							*
*													*
*	Person ID										*
*	Survey year										*
*	Sex												*
* 	Age												*
*	Number of children in household					*	
* 	Number of people in household					*
*	Number of education years						*
*	Subjective health								*
* 	Current life satisfaction						*
*	Employment status								*
* 	Job income, 1. Job								*
* 	Job income, 2. Job								*
*	Industry/sector									*
*													*
*	Randomize with runiform							*
*	Draw random sample with sample					*
*****************************************************

/*
Dataset PGEN:
industry/sector:	        pgnace2		
education years:			pgbilzeit
gross income:				pglabgro
gross side income:			pgsndjob
employment Status:			pgemplst


Dataset PEQUIV: 
Number of Person in HH:		d11106
Number of Children in HH:	d11107
Wages, salary main job:		ijob1
Income from secondary Job:	ijob2
subj. Health:				m11126
Overall life satisfaction	p11101
*/


********************************************************************************
* 					1. Preperation of the dataset								*
********************************************************************************

** set path **
if c(username)==" " & c(os) == "Windows"  {
	global data " "
	global temp " "
	global output " "
	global metadaten " "
}


** Open master dataset **
use pid hid syear sex netto gebjahr psample using "${data}ppathl.dta" , clear

** merge using dataset **
merge 1:1 pid syear using "${data}pgen.dta", keepusing (pgnace2 pgbilzeit pglabgro pgsndjob pgemplst) assert(1 3) nogen

** merge using dataset **
merge 1:1 pid syear using "${data}pequiv.dta", keepusing (d11106 d11107 ijob1 ijob2 m11126 p11101) assert(1 3) nogen 

** keep certain survey years **
keep if syear >=2015 & syear <=2019

** keep only adults and teens who completed an individual questionnaire **
keep if netto >=10 & netto <=19

** keep samples A to M2  
keep if inrange(psample,1,16)

********************************************************************************
*						2. Rename and label variables							*
********************************************************************************
* rename
rename d11106 anz_pers
rename d11107 anz_kind
rename p11101 lebensz_org
rename m11126 gesund_org
rename ijob1 einkommenj1
rename ijob2 einkommenj2
rename pglabgro einkommenm1
rename pgsndjob einkommenm2
rename pgbilzeit bildung
rename pgnace2	branche
rename pgemplst erwerb 
*Labels  
label variable anz_pers "Anzahl Personen im Haushalt"
label variable anz_kind "Anzahl Kinder im Haushalt"
label variable lebensz_org	"Ggw. Lebenszufriedenheit"
label variable gesund_org	"subj. Gesundheit"
label variable einkommenj1	"Bruttoeinkommen/Jahr Hauptberuf"
label variable einkommenj2	"Bruttoeinkommen/Jahr Nebenberuf"
label variable einkommenm1	"Bruttoeinkommen/Monat Hauptberuf"
label variable einkommenm2	"Bruttoeinkommen/Monat Nebenberuf"
label variable bildung	"Anzahl an Bildungsjahren"
label variable branche	"Branche aktueller Beruf"
label variable erwerb "Erwerbsstatus"

********************************************************************************
*					3. Generade and recode variables							*
********************************************************************************

** recode sex to adjust to old practice dataset **
recode sex 1 = 0 
recode sex 2 = 1
label define sex 0 "[0] männlich" 1 "[1] weiblich", modify 
label values sex sex

** generate age variable ** 
gen alter = syear-gebjahr
label variable alter "Alter der Befragungsperson"

** define german values labels because pequiv dataset is only available in english **
lab def gesund_org 1 "[1] Sehr gut" 2 "[2] Gut" 3 "[3] Zufriedenstellend" 4 "[4] Weniger gut" 5 "[5] Schlecht", modify
lab val gesund_org gesund_org

lab def lebensz_org 0 "[0] ganz und gar unzufrieden" 10 "[10] ganz und gar zufrieden", modify
lab val lebensz_org lebensz_org

** sort data **
order pid syear hid psample netto sex gebjahr alter alter anz_per anz_kind bildung erwerb branche einkommenj1 einkommenj2 einkommenm1 einkommenm2 gesund_org lebensz_org

** change soep missing to system missing **
mvdecode bildung erwerb branche einkommenm1 einkommenm2 gesund_org lebensz_org, mv (-8=. \ -7=. \ -5=. \ -3=. \ -2=.\ -1=.)

** set data as panel **
xtset pid syear

save "${output}practice", replace

********************************************************************************
*			4. Generate random ID number and draw sample						*
********************************************************************************
 
use "${output}practice", clear

** drop duplicates to ensure one random generated number for each line **
duplicates drop pid, force
** generate random number to be able to newly sort every person in the dataset
gen persnr=runiformint(10000,100000)
sort persnr

** generate final id in random sorted dataset
gen id = _n
label var id "Personennummer (zufällig generiert)"

** draw random sample of 20 percent **
sample 20

** keep pid to merge **
keep id pid 
save "${temp}runiform", replace

********************************************************************************
*				5. Add random sampling error to income variables				*
********************************************************************************

use "${output}practice", clear
merge m:1 pid using "${temp}runiform", assert(master match) keep(match) nogen

** variable net income/year for main job **

* inspect data
sum einkommenj1
return list
local mittelwert = r(mean)
display `mittelwert' /10

* gen sampling error
gen fehler=rnormal(0,1678)
sum fehler

* add to income variable
gen einkommenj1f=einkommenj1 + fehler if einkommenj1 >0

* set to 0 if no income 
mvencode einkommenj1f, mv(.=0)

* set to 1 if income is negative
replace einkommenj1f = 1 if einkommenj1f <0

*----------------------------------------------------------------------------*

** variable net income/year for second job **

** inspect data
sum einkommenj2
return list
local mittelwert = r(mean)
display `mittelwert' /10

** gen sampling error
gen fehler2=rnormal(0, 30)
sum fehler2

* add to income variable
gen einkommenj2f=einkommenj2 + fehler2 if einkommenj2 >0

* set to 0 if no income 
mvencode einkommenj2f, mv(.=0)

* set to 1 if income is negative
replace einkommenj2f = 1 if einkommenj2f <0

*----------------------------------------------------------------------------*

** variable net income/month for main job **

** inspect data
sum einkommenm1
return list 
local mittelwert =r(mean)
display `mittelwert'/10

** gen sampling error
gen fehler3=rnormal(0, 265)
sum fehler3

* add to income variable
gen einkommenm1f=einkommenm1 + fehler3 if einkommenm1 >0

* set to 0 if no income 
mvencode einkommenm1f, mv(.=0)

* set to 1 if income is negative
replace einkommenm1f = 1 if einkommenm1f <0

*----------------------------------------------------------------------------*

** variable net income/month for second job **

** inspect data
sum einkommenm2
return list
local mittelwert=r(mean)
display `mittelwert'/10

** gen sampling error
gen fehler4=rnormal(0,31)
sum fehler4

* add to income variable
gen einkommenm2f=einkommenm2 +fehler4 if einkommenm2 >0

* set to 0 if no income 
mvencode einkommenm2f, mv(.=0)

* set to 1 if income is negative
replace einkommenm2f = 1 if einkommenm2f <0

/*Box-Plot
graph box einkommenj1 einkommenj1f
graph box einkommenj2 einkommenj2f
graph box einkommenm1 einkommenm1f
graph box einkommenm2 einkommenm2f
*/

** drop unnecessary variables **
drop pid netto psample gebjahr hid fehler fehler* ///
einkommenj1 einkommenj2 einkommenm1 einkommenm2

** rename and label income variables
rename einkommenj1f einkommenj1
rename einkommenj2f einkommenj2
rename einkommenm1f einkommenm1
rename einkommenm2f einkommenm2

label variable einkommenj1	"Bruttoeinkommen/Jahr Hauptberuf"
label variable einkommenj2	"Bruttoeinkommen/Jahr Nebenberuf"
label variable einkommenm1	"Bruttoeinkommen/Monat Hauptberuf"
label variable einkommenm2	"Bruttoeinkommen/Monat Nebenberuf"

order id 
save "${output}practice_dataset", replace

********************************************************************************
*					6. Create englisch dataset 									*
********************************************************************************

** only needs to be installed once
*net install soeptools, from(http://ddionrails.github.io/soeptools/)

** use metadata to create artificial dataset with english labels
soepinitdta, mdpath("${metadaten}")
save "${temp}dta_with_new_label", replace

use "${output}practice_dataset", clear

* drop all characteristics and labels
soepdropchar, dataset
label drop _all

**append english labels **
append using "${temp}dta_with_new_label"

* nun kannst Du auf englisch umschalten    
label language EN
save "${output}practice_dataset_eng", replace

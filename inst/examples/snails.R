# Abundance of bulinus
hist(snails$Bulinus_tot)

# Infection rates:
hist(snails$Bulinus_pos_tot / snails$Bulinus_tot)

# Scale and remove NA:
data = snails 
data$sTemp_Water = scale(data$Temp_Water)
data$spH = scale(data$pH)
data$swater_speed_ms = scale(data$water_speed_ms)
data$swater_depth = scale(data$water_depth)
data$sCond = scale(data$Cond)
data$swmo_prec = scale(data$wmo_prec)
data$syear = scale(data$year)
data$sLat = scale(data$Latitude)
data$sLon = scale(data$Longitude)

rows = rownames(model.matrix(~sTemp_Water + spH + sLat + sLon + sCond + 
                               seas_wmo+ swmo_prec + swater_speed_ms + 
                               swater_depth + syear + duration + locality + 
                               site_irn + coll_date, data = data))
data = data[rows, ]

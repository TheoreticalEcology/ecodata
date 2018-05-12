oldpar <- par(mfrow = c(1,2))
contour(x = 1:ncol(volcano), y = 1:nrow(volcano), t(volcano), asp = 1)
points(volcanoisland$x, volcanoisland$y, cex = volcanoisland$wind)
persp(volcano)
par(oldpar)

with(volcanoisland, {
  
  plot(year, altitude, cex = beetles/5, pch =2, main = "Beetle counts across altitudinal gradient, triangle is proportional to counts")
  #lines(plot, altitude * 1000)
  #points(unique(plot), unique(altitude * 1000) , pch = 3)
  #text(unique(plot), unique(altitude * 1000) - 50, unique(plot), cex = 0.7 )
})

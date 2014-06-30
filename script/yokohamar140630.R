
## ----plot.demo1, eval=FALSE,echo=FALSE-----------------------------------
## pairs(iris[1:4], main="Edgar Anderson's Iris Data", pch=21, bg = c("red", "green3", "blue")[unclass(iris$Species)])


## ----plot.demo2, eval=FALSE, echo=FALSE----------------------------------
## x <- 10*1:nrow(volcano)
## y <- 10*1:ncol(volcano)
## lev <- pretty(range(volcano), 10)
## par(bg = "lightcyan")
## pin <- par("pin")
## xdelta <- diff(range(x))
## ydelta <- diff(range(y))
## xscale <- pin[1]/xdelta
## yscale <- pin[2]/ydelta
## scale <- min(xscale, yscale)
## xadd <- 0.5*(pin[1]/scale - xdelta)
## yadd <- 0.5*(pin[2]/scale - ydelta)
## 
## plot(
##   numeric(0), numeric(0),
##   xlim = range(x)+c(-1,1)*xadd, ylim = range(y)+c(-1,1)*yadd,
##   type = "n", ann = FALSE)
## usr <- par("usr")
## rect(usr[1], usr[3], usr[2], usr[4], col="green3")
## contour(x, y, volcano, levels = lev, col="yellow", lty="solid", add=TRUE)
## box()
## title("A Topographic Map of Maunga Whau", font= 4)
## title(xlab = "Meters North", ylab = "Meters West", font= 3)
## mtext("10 Meter Contour Spacing", side=3, line=0.35, outer=FALSE,
##       at = mean(par("usr")[1:2]), cex=0.7, font=3)


## ----plot.demo3, eval=FALSE, echo=FALSE----------------------------------
## x <- stats::rnorm(50)
## opar <- par(bg = "white")
## plot(x, ann = FALSE, type = "n")
## abline(h = 0, col = gray(.90))
## lines(x, col = "green4", lty = "dotted")
## points(x, bg = "limegreen", pch = 21)
## title(main = "Simple Use of Color In a Plot",
##       xlab = "Just a Whisper of a Label",
##       col.main = "blue", col.lab = gray(.8),
##       cex.main = 1.2, cex.lab = 1.0, font.main = 4, font.lab = 3)



## ----, global_option, include=FALSE--------------------------------------
library(knitr)
opts_chunk$set(
  warning=FALSE,
  message=FALSE)


## ------------------------------------------------------------------------
1 + 3


## ------------------------------------------------------------------------
a <- c(1, 2, 3)
a


## ------------------------------------------------------------------------
b <- c(4, 5, 6)
a + b


## ------------------------------------------------------------------------
a * b


## ------------------------------------------------------------------------
mean(b)


## ------------------------------------------------------------------------
10 * pi


## ------------------------------------------------------------------------
data(iris)
head(iris)


## ----, ex_iris_plot, eval=FALSE------------------------------------------
## plot(
##   iris$Sepal.Length, iris$Petal.Length,
##   col=c("royal blue", "green", "orange")[iris$Species],
##   pch=16, cex=2)


## ------------------------------------------------------------------------
oneway.test(iris$Sepal.Length ~ iris$Specie)


## ----, eval=FALSE--------------------------------------------------------
## install.package("lattice", dependencies=TRUE)


## ----ex_iris_xyplot, eval=FALSE------------------------------------------
## library(lattice)
## xyplot(
##   Petal.Length ~ Sepal.Length | Species,
##   data=iris)



## ----, global_option, include=FALSE--------------------------------------
library(knitr)
opts_chunk$set(
  warning=FALSE,
  message=FALSE)


## ------------------------------------------------------------------------
1 + 3
a <- c(1, 2, 3)
b <- c(4, 5, 6)
a + b
a * b


## ------------------------------------------------------------------------
mean(b)
10 * pi


## ----, eval=FALSE, echo=FALSE--------------------------------------------
## install.packages("knitr", dependencies=T)
## install.packages("lattice", dependencies=T)
## install.packages("devtools", dependencies=T)
## devtools::install_github("rstudio/rmarkdown")


## ------------------------------------------------------------------------
data(iris)


## ----, eval=FALSE--------------------------------------------------------
## head(iris)


## ----, eval=FALSE--------------------------------------------------------
## png("ex_iris_plot") # ファイル名
## plot(
##   iris$Sepal.Length, iris$Petal.Length,
##   col=c("royal blue", "green", "orange")[iris$Species],
##   pch=16, cex=2)
## dev.off() #必ずつけること


## ----, eval=FALSE--------------------------------------------------------
## df <- read.csv("sample-data.csv", header=T)
## summary(df)



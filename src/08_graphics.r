library(data.table)
library(psych)
library(ggplot2)
library(reshape2)
library(lattice)

setwd("~/sas-py-r/src")

# ------------
# SCATTER PLOT
# ------------
dt1 <- data.table( xval=seq(from = 0.0, to = 4.0, by = 0.1),
                   yval=sin(seq(from = 0.0, to = 8.0, by = 0.2)) )
dt2 <- data.table( xval=seq(from = 0.0, to = 4.0, by = 0.1),
                   yval=cos(seq(from = 0.0, to = 8.0, by = 0.2)) )

ggplot(data=dt1, aes(x=xval, y=yval, group=1)) + geom_line(colour="green", linetype="dashed", size=1.0) + xlab("") + ylab("")
#ggsave("../images/08_r_plot.png", plot=last_plot())

# ---------
# BAR CHART
# ---------
dt3 <- data.table( xval=c('A', 'B', 'C', 'D'),
                   yval=c(1.0, 3.0, 4.0, 2.0) )

update_geom_defaults("bar", list(fill = "blue"))
ggplot(data=dt3, aes(x=xval, y=yval)) + geom_bar(stat="identity", color="blue") + xlab("") + ylab("")
#ggsave("../images/08_r_chart.png", plot=last_plot())

# -------
# 3D PLOT
# -------
x = seq(from = -5, to = 5, by = 0.25)
y = seq(from = -5, to = 5, by = 0.25)
df1 <- expand.grid(x=x, y=y)
df1$z <- sin(sqrt(df1$x**2 + df1$y**2))

wireframe(df1$z ~ df1$x*df1$y,
          xlab = "", ylab = "", zlab = "",
          main = "",
          drape = TRUE,
          colorkey = FALSE
)

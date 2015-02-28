# Skript zur Erstellung eines Beispieldatensatzes
# für simulierte Flugpreise
# Sprache: R


flights <- data.frame(QueryDate=Sys.Date(),
                      Datetime=seq(from=as.Date("2015-03-01"), to=as.Date("2016-02-28"), by="day"),
                      Airport1="FRA",
                      Airport2="BKK",
                      Price=500+50*arima.sim(model=list(ar=c(.9,-.2)), n=365)
)
plot(x=flights$Datetime, y=flights$Price, type="l")

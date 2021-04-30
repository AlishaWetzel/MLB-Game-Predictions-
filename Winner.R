Winner<-function(var1,var2){
MyData=read.table("Stat 256 Test1.csv",header=T,sep=",")
attach(MyData)
lm.fit=lm(H2020 ~ G2020 + Ghome2020 + X3B2020 + HR2020 + BB2020 + SO2020 + SB2020 + CS2020 + RA2020 + ERA2020 + CG2020 + SHO2020 + IPouts2020 + HA2020 + HRA2020 + BBA2020 + SOA2020 + E2020 + DP2020 + BPF2020 + PPF2020)
comparisontable=cbind(teamID2020,lm.fit$fitted.values)
teamnames=c("Arizona Diamondbacks", "Atlanta Braves", "Baltimore Orioles", "Boston Red Sox", "Chicago White Sox", "Chicago Cubs", "Cincinnati Reds", "Cleveland Indians", "Colorado Rockies", "Detroit Tigers", "Houston Astros", "Kansas City Royals", "Los Angeles Angels", "Los Angeles Dodgers", "Miami Marlins", "Milwaukee Brewers", "Minnesota Twins", "New York Yankees", "New York Mets", "Oakland Athletics", "Philadelphia Phillies", "Pittsburgh Pirates", "San Diego Padres", "Seattle Mariners", "San Francisco Giants", "St. Louis Cardinals", "Tampa Bay Rays", "Texas Rangers", "Toronto Blue Jays", "Washington Nationals")
looktable1=cbind(teamnames, teamID2020)
for (i in 1:length(teamID2020)) if (var1==looktable1[i,1]) varone=looktable1[i,2]
for (i in 1:length(teamID2020)) if (var2==looktable1[i,1]) vartwo=looktable1[i,2]
if (varone>vartwo) print(paste(var1, "wins!")) else if (vartwo>varone) print(paste(var2, "wins!")) else print("It is a tie")
}

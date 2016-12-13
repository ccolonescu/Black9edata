library(devtools)
library(readxl)

datDir<-"C:/Users/colonescuc/Documents/Black Files/Data9e/Databases"

Energy<-read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Energy")
Gas12yr<-read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="12-Year Gasoline")
  names(Gas12yr)<-c("Month","USPrice","OPECPrice","USProd","USngPrice")

Agri<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Agricultural")

Food<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Consumer Food")
  names(Food)<-c("Spending","Income","Debt","Region","Location")


Financial<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Financial")
  names(Financial)<-c("company","type","rev","assets","roe","eps","yield","dps","ppe")

Hospital<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Hospital")
  names(Hospital)<-c("hosp","region","ctrl","service","beds","admiss",
                   "census","visits","births","totexp","payroll","personell")
Labor<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="International Labor")
Manufacturer<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"), sheet="Manufacturer")
  names(Manufacturer)<- c("SIC","emp","wkrs",	"vadded",	"costmat",
                        "shipmnts",	"newcap",	"inv","grp")
Stock<- read_excel(paste0(datDir,"/Black8eDatasets.xlsx"),
                   sheet="U.S. International Stock Market")
names(Stock)=c("month","DJIA","NASDAQ","SP500","NIKKEI225","HANGSENG",	"FTSE100",
               "IPC")


devtools::use_data(Energy,Gas12yr,Agri,Food,Financial,Hospital,Labor,
           Manufacturer,Stock,  overwrite=TRUE) #saves files in the "data" folder

# Click "Build&Reload

#--------------------------------
## Importing the Case Excel files
#--------------------------------
a <-"C:/Users/colonescuc/Documents/Black Files/Data9e/Case Data"
CaseCh2<-read_excel(paste0(a,"/Case Chapter 2 data in Excel9th.xlsx"),
                    col_names=FALSE)
names(CaseCh2)<-c("airline","passengers")
CaseCh3<-read_excel(paste0(a,"/Case Chapter 3 data in Excel9th.xlsx"),
                    col_names=FALSE)
names(CaseCh3)<-c("fill")

CaseCh9<-read_excel(paste0(a,"/Case Chapter 9 data in Excel9th.xlsx"))

CaseCh11Q1<-read_excel(paste0(a,"/Case Chapter 11 data in Excel9th.xlsx"),
                     sheet="Question 1 data", col_names=TRUE)
names(CaseCh11Q1) <- c("suppliers","deg70","dedg110","deg150")
CaseCh11Q2<-read_excel(paste0(a,"/Case Chapter 11 data in Excel9th.xlsx"),
                       sheet="Question 2 data", col_names=TRUE)
names(CaseCh11Q2) <- c("Canada","Columbia","Taiwan","US")

CaseCh11Q3<-read_excel(paste0(a,"/Case Chapter 11 data in Excel9th.xlsx"),
                       sheet="Question 3 data", col_names=TRUE)
CaseCh12Cost<-read_excel(paste0(a,"/Case Chapter 12 data in Excel9th.xlsx"),
                       sheet="Cost", col_names=TRUE)
names(CaseCh12Cost)<-c("speed","vol12","vol20")
CaseCh12Sales<-read_excel(paste0(a,"/Case Chapter 12 data in Excel9th.xlsx"),
                         sheet="Sales", col_names=TRUE)
names(CaseCh12Sales)<-c("year","sales")
CaseCh13Q1<-read_excel(paste0(a,"/Case Chapter 13 data in Excel9th.xlsx"),
                          sheet="Question 1 data", col_names=TRUE)
CaseCh13Q2<-read_excel(paste0(a,"/Case Chapter 13 data in Excel9th.xlsx"),
                       sheet="Question 2 data", col_names=TRUE)
CaseCh14Q1<-read_excel(paste0(a,"/Case Chapter 14 data in Excel9th.xlsx"),
                       sheet="Question 1", col_names=TRUE)
names(CaseCh14Q1)<- c("amount","age","days","cups","income")
CaseCh14Q2<-read_excel(paste0(a,"/Case Chapter 14 data in Excel9th.xlsx"),
                       sheet="Question 2", col_names=TRUE)
names(CaseCh14Q2)<- c("year","revenue","nstores","ndrinks","earnings")
CaseCh15Q1<-read_excel(paste0(a,"/Case Chapter 15 data in Excel9th.xlsx"),
                       sheet="Question 1 data", col_names=TRUE)
names(CaseCh15Q1)<- c("period","sales")
CaseCh15Q2<-read_excel(paste0(a,"/Case Chapter 15 data in Excel9th.xlsx"),
                       sheet="Question 2 data", col_names=TRUE)
names(CaseCh15Q2)<- c("year","labor")
CaseCh16Price<-read_excel(paste0(a,"/Case Chapter 16 data in Excel9th.xlsx"),
                       sheet="Price", col_names=TRUE)
CaseCh16Sex<-read_excel(paste0(a,"/Case Chapter 16 data in Excel9th.xlsx"),
                          sheet="Sex", col_names=TRUE)
CaseCh17Q1<-read_excel(paste0(a,"/Case Chapter 17 data in Excel9th.xlsx"),
                          sheet="Question 1 data", col_names=TRUE)
CaseCh17Q2<-read_excel(paste0(a,"/Case Chapter 17 data in Excel9th.xlsx"),
                       sheet="Question 2 data", col_names=TRUE)

devtools::use_data(CaseCh2,CaseCh3, CaseCh9,
                   CaseCh11Q1,CaseCh11Q2,CaseCh11Q3,
                   CaseCh12Cost,CaseCh12Sales,CaseCh13Q1,CaseCh13Q2,
                   CaseCh14Q1,CaseCh14Q2, CaseCh15Q1, CaseCh15Q2,
                   CaseCh16Price,CaseCh16Sex,CaseCh17Q1,CaseCh17Q2,
                   overwrite=TRUE) #saves files in the "data" folder

#------------------
# Data for Problems
#------------------
b <-"C:/Users/colonescuc/Documents/Black Files/Data9e/Problems Data/"
fileList<-list.files(b, recursive=TRUE)
fileList <- paste0(b,fileList)
p10.13<-read_excel(fileList[1])
p10.14<-read_excel(fileList[2])
p10.16<-read_excel(fileList[3])
p10.19<-read_excel(fileList[4])
p10.20<-read_excel(fileList[5])
p10.21<-read_excel(fileList[6])
p10.22<-read_excel(fileList[7])
p10.24<-read_excel(fileList[8])
p10.25<-read_excel(fileList[9])
p10.26<-read_excel(fileList[10])
p10.27<-read_excel(fileList[11])
p10.3<-read_excel(fileList[12])
p10.4<-read_excel(fileList[13])
p10.41<-read_excel(fileList[14])
p10.42<-read_excel(fileList[15])
p10.50<-read_excel(fileList[16])
p10.55<-read_excel(fileList[17])
p10.62<-read_excel(fileList[18])
p10.63<-read_excel(fileList[19])
p10.64<-read_excel(fileList[20])
p10.65<-read_excel(fileList[21])
p10.70<-read_excel(fileList[22])
p10.71<-read_excel(fileList[23])
p10.8<-read_excel(fileList[24])
devtools::use_data(p10.13,p10.14,p10.16,p10.19,p10.20,p10.21,p10.22,p10.24,
                   p10.25,p10.26,p10.27,p10.3,p10.4,p10.41,p10.42,p10.50,
                   p10.55,p10.62,p10.63,p10.64,p10.65,p10.70,p10.71,p10.8,
                   overwrite=TRUE)

p11.11<-read_excel(fileList[25])
p11.12<-read_excel(fileList[26])
p11.13<-read_excel(fileList[27])
p11.14<-read_excel(fileList[28])
p11.28<-read_excel(fileList[29])
p11.29<-read_excel(fileList[30])
p11.32<-read_excel(fileList[31])
p11.33<-read_excel(fileList[32])
p11.40<-read_excel(fileList[33])
p11.41<-read_excel(fileList[34])
p11.42<-read_excel(fileList[35])
p11.43<-read_excel(fileList[36])
p11.45<-read_excel(fileList[37])
p11.47<-read_excel(fileList[38])
p11.5<-read_excel(fileList[39])
p11.50<-read_excel(fileList[40])
p11.53<-read_excel(fileList[41])
p11.55<-read_excel(fileList[42])
p11.56<-read_excel(fileList[43])
p11.57<-read_excel(fileList[44])
p11.58<-read_excel(fileList[45])
p11.59<-read_excel(fileList[46])
p11.6<-read_excel(fileList[47])
p11.60<-read_excel(fileList[48])
p11.61<-read_excel(fileList[49])
p11.7<-read_excel(fileList[50])
p11.8<-read_excel(fileList[51])
devtools::use_data(p11.11,p11.12,p11.13,p11.14,p11.28,p11.29,p11.32,p11.33,
                   p11.40,p11.41,p11.42,p11.43,p11.45,p11.47,p11.5,p11.50,
                   p11.53,p11.55,p11.56,p11.57,p11.58,p11.59,p11.6,
                   p11.60,p11.61,p11.7,p11.8,
                   overwrite=TRUE)

p2.01<-read_excel(fileList[52], col_names = FALSE)
p2.03<-read_excel(fileList[53], col_names = FALSE)
p2.09<-read_excel(fileList[54], col_names = FALSE)
p2.10<-read_excel(fileList[55], col_names = FALSE)
p2.15<-read_excel(fileList[56], col_names = FALSE)
p2.17<-read_excel(fileList[57], col_names = FALSE)
p2.20<-read_excel(fileList[58])
p2.21<-read_excel(fileList[59])
p2.25<-read_excel(fileList[60], col_names = FALSE)
p2.28<-read_excel(fileList[61], col_names = FALSE)
p2.29<-read_excel(fileList[62], col_names = FALSE)
p2.30<-read_excel(fileList[63])
p2.31<-read_excel(fileList[64], col_names = FALSE)
p2.32<-read_excel(fileList[65])
p2.33<-read_excel(fileList[66])
p2.34<-read_excel(fileList[67], col_names = FALSE)
p2.37<-read_excel(fileList[68], col_names = FALSE)
p2.39<-read_excel(fileList[69], col_names = FALSE)
p2.42<-read_excel(fileList[70])
p2.43<-read_excel(fileList[71])
p2.44<-read_excel(fileList[72])
p2.45<-read_excel(fileList[73])
p2.46<-read_excel(fileList[74], col_names = FALSE)
devtools::use_data(p2.01,p2.03,p2.09,p2.10,p2.15,p2.17,p2.20,p2.21,p2.25,
  p2.28,p2.29,p2.30,p2.31,p2.32,p2.33,p2.34,p2.37,p2.39,p2.42,p2.43,p2.44,
  p2.45,p2.46,overwrite=TRUE)


p3.1<-read_excel(fileList[75], col_names = FALSE)
p3.10<-read_excel(fileList[76], col_names = FALSE)
p3.11<-read_excel(fileList[77], col_names = FALSE)
p3.12<-read_excel(fileList[78], col_names = FALSE)
p3.13<-read_excel(fileList[79], col_names = FALSE)
p3.14<-read_excel(fileList[80], col_names = FALSE)
p3.15<-read_excel(fileList[81], col_names = FALSE)
p3.16<-read_excel(fileList[82], col_names = FALSE)
p3.18<-read_excel(fileList[83])
p3.19<-read_excel(fileList[84], col_names = FALSE)
p3.2<-read_excel(fileList[85], col_names = FALSE)
p3.20<-read_excel(fileList[86], col_names = FALSE)
p3.26<-read_excel(fileList[87], col_names = FALSE)
p3.3<-read_excel(fileList[88], col_names = FALSE)
p3.37<-read_excel(fileList[89], col_names = FALSE)
p3.38<-read_excel(fileList[90], col_names = FALSE)
p3.39<-read_excel(fileList[91], col_names = FALSE)
p3.4<-read_excel(fileList[92], col_names = FALSE)
p3.40<-read_excel(fileList[93], col_names = FALSE)
p3.41<-read_excel(fileList[94], col_names = FALSE)
p3.42<-read_excel(fileList[95], col_names = FALSE)
p3.43<-read_excel(fileList[96], col_names = FALSE)
p3.44<-read_excel(fileList[97], col_names = FALSE)
p3.5<-read_excel(fileList[98], col_names = FALSE)
p3.50<-read_excel(fileList[99], col_names = FALSE)
p3.52<-read_excel(fileList[100], col_names = FALSE)
p3.6<-read_excel(fileList[101], col_names = FALSE)
p3.7<-read_excel(fileList[102], col_names = FALSE)
p3.8<-read_excel(fileList[103], col_names = FALSE)
p3.9<-read_excel(fileList[104], col_names = FALSE)
devtools::use_data(p3.1,p3.10,p3.11,p3.12,p3.13,p3.14,p3.15,p3.16,p3.18,p3.19,
  p3.2,p3.20,p3.26,p3.3,p3.37,p3.38,p3.39,p3.4,p3.40,p3.41,p3.42,p3.43,
  p3.44,p3.5,p3.50,p3.52,p3.6,p3.7,p3.8,p3.9,overwrite=TRUE)

p5.21<-read_excel(fileList[105], col_names = FALSE)
p8.10<-read_excel(fileList[106], col_names = FALSE)
p8.11<-read_excel(fileList[107], col_names = FALSE)
p8.13<-read_excel(fileList[108], col_names = FALSE)
p8.14<-read_excel(fileList[109], col_names = FALSE)
p8.17<-read_excel(fileList[110], col_names = FALSE)
p8.19<-read_excel(fileList[111], col_names = FALSE)
p8.20<-read_excel(fileList[112], col_names = FALSE)
p8.21<-read_excel(fileList[113], col_names = FALSE)
p8.22<-read_excel(fileList[114], col_names = FALSE)
p8.23<-read_excel(fileList[115], col_names = FALSE)
p8.36<-read_excel(fileList[116], col_names = FALSE)
p8.38<-read_excel(fileList[117], col_names = FALSE)
p8.39<-read_excel(fileList[118], col_names = FALSE)
p8.48<-read_excel(fileList[119], col_names = FALSE)
p8.49<-read_excel(fileList[120], col_names = FALSE)
p8.51<-read_excel(fileList[121], col_names = FALSE)
p8.53<-read_excel(fileList[122], col_names = FALSE)
p8.57<-read_excel(fileList[123], col_names = FALSE)
p8.61<-read_excel(fileList[124], col_names = FALSE)
p8.71<-read_excel(fileList[125], col_names = FALSE)
p8.72<-read_excel(fileList[126], col_names = FALSE)
p8.8<-read_excel(fileList[127], col_names = FALSE)
p8.9<-read_excel(fileList[128], col_names = FALSE)
devtools::use_data(p5.21,p8.10,p8.11,p8.13,p8.14,p8.17,p8.19,p8.20,
  p8.21,p8.22,p8.23,p8.36,p8.38,p8.39,p8.48,p8.49,p8.51,p8.53,p8.57,
  p8.61,p8.71,p8.72,p8.8,p8.9,overwrite=TRUE)


p9.11<-read_excel(fileList[129], col_names = FALSE)
p9.15<-read_excel(fileList[130], col_names = FALSE)
p9.16<-read_excel(fileList[131], col_names = FALSE)
p9.17<-read_excel(fileList[132], col_names = FALSE)
p9.18<-read_excel(fileList[133], col_names = FALSE)
p9.21<-read_excel(fileList[134], col_names = FALSE)
p9.22<-read_excel(fileList[135], col_names = FALSE)
p9.34<-read_excel(fileList[136], col_names = FALSE)
p9.35<-read_excel(fileList[137], col_names = FALSE)
p9.36<-read_excel(fileList[138], col_names = FALSE)
p9.52<-read_excel(fileList[139], col_names = FALSE)
p9.57<-read_excel(fileList[140], col_names = FALSE)
p9.6<-read_excel(fileList[141], col_names = FALSE)
p9.63<-read_excel(fileList[142], col_names = FALSE)
p9.64<-read_excel(fileList[143], col_names = FALSE)

p12.1<-read_excel(fileList[144])
p12.10<-read_excel(fileList[145])
p12.11<-read_excel(fileList[146])
p12.12<-read_excel(fileList[147])
p12.13<-read_excel(fileList[148])
p12.14<-read_excel(fileList[149])
p12.15<-read_excel(fileList[150])
p12.16<-read_excel(fileList[151])
p12.17<-read_excel(fileList[152])
p12.18<-read_excel(fileList[153])
p12.2<-read_excel(fileList[154])
p12.20<-read_excel(fileList[155])
p12.21<-read_excel(fileList[156])
p12.22<-read_excel(fileList[157])
p12.3<-read_excel(fileList[158])
p12.31<-read_excel(fileList[159])
p12.37<-read_excel(fileList[160])
p12.4<-read_excel(fileList[161])
p12.48 <-read_excel(fileList[162])
p12.49 <-read_excel(fileList[163])
p12.5 <-read_excel(fileList[164])
p12.50 <-read_excel(fileList[165])
p12.51 <-read_excel(fileList[166])
p12.52 <-read_excel(fileList[167])
p12.53 <-read_excel(fileList[168])
p12.54 <-read_excel(fileList[169])
p12.55 <-read_excel(fileList[170])
p12.56 <-read_excel(fileList[171])
p12.57 <-read_excel(fileList[172])
p12.58 <-read_excel(fileList[173])
p12.59 <-read_excel(fileList[174])
p12.6 <-read_excel(fileList[175])
p12.60 <-read_excel(fileList[176])
p12.61 <-read_excel(fileList[177])
p12.62 <-read_excel(fileList[178])
p12.63 <-read_excel(fileList[179])
p12.64 <-read_excel(fileList[180])
p12.65 <-read_excel(fileList[181])
p12.66 <-read_excel(fileList[182])
p12.7 <-read_excel(fileList[183])
p12.8 <-read_excel(fileList[184])
p12.9 <-read_excel(fileList[185])

p13.1 <-read_excel(fileList[186])
p13.11 <-read_excel(fileList[187])
p13.12 <-read_excel(fileList[188])
p13.2 <-read_excel(fileList[189])
p13.24 <-read_excel(fileList[190])
p13.25 <-read_excel(fileList[191])
p13.26 <-read_excel(fileList[192])
p13.27 <-read_excel(fileList[193])
p13.28 <-read_excel(fileList[194])
p13.29 <-read_excel(fileList[195])
p13.30 <-read_excel(fileList[196])
p13.31 <-read_excel(fileList[197])
p13.5 <-read_excel(fileList[198])
p13.6 <-read_excel(fileList[199])
p14.1 <-read_excel(fileList[200])
devtools::use_data(p9.11,p9.15,p9.16,p9.17,p9.18,p9.21,p9.22,p9.34,p9.35,p9.36,
  p9.52,p9.57,p9.6,p9.63,p9.64,p12.1,p12.10,p12.11,p12.12,p12.13,p12.14,
  p12.15,p12.16,p12.17,p12.18,p12.2,p12.20,p12.21,p12.22,p12.3,p12.31,p12.37,p12.4,
  p12.48, p12.49 ,p12.5 ,p12.50 ,p12.51 ,p12.52 ,p12.53 ,p12.54 ,p12.55 ,p12.56 ,
  p12.57 ,p12.58 ,p12.59,p12.6 ,p12.60 ,p12.61 ,p12.62 ,p12.63 ,p12.64 ,p12.65 ,p12.66 ,
  p12.7 ,p12.8 ,p12.9 ,p13.1 ,p13.11 ,p13.12 ,p13.2 ,p13.24 ,p13.25 ,p13.26 ,
  p13.27,p13.28,p13.29 ,p13.30,p13.31,p13.5,p13.6 ,p14.1 ,overwrite=TRUE)


p14.11 <-read_excel(fileList[201])
p14.13 <-read_excel(fileList[202])
p14.14 <-read_excel(fileList[203])
p14.17 <-read_excel(fileList[204])
p14.18 <-read_excel(fileList[205])
p14.2 <-read_excel(fileList[206])
p14.27 <-read_excel(fileList[207])
p14.28 <-read_excel(fileList[208])
p14.29 <-read_excel(fileList[209])
p14.3 <-read_excel(fileList[210])
p14.30 <-read_excel(fileList[211])
p14.31 <-read_excel(fileList[212])
p14.32 <-read_excel(fileList[213])
p14.33 <-read_excel(fileList[214])
p14.34 <-read_excel(fileList[215])
p14.35 <-read_excel(fileList[216])
p14.37 <-read_excel(fileList[217])
p14.4 <-read_excel(fileList[218])
p14.5 <-read_excel(fileList[219])
p14.6 <-read_excel(fileList[220])
p14.7 <-read_excel(fileList[221])
p14.8 <-read_excel(fileList[222])

p15.1 <-read_excel(fileList[223])
p15.10 <-read_excel(fileList[224])
p15.11 <-read_excel(fileList[225])
p15.12 <-read_excel(fileList[226])
p15.13 <-read_excel(fileList[227])
p15.14 <-read_excel(fileList[228])
p15.15 <-read_excel(fileList[229])
p15.17 <-read_excel(fileList[230])
p15.19 <-read_excel(fileList[231])
p15.2 <-read_excel(fileList[232])
p15.20 <-read_excel(fileList[233])
p15.21 <-read_excel(fileList[234])
p15.22 <-read_excel(fileList[235])
p15.23 <-read_excel(fileList[236])
p15.24 <-read_excel(fileList[237])
p15.25 <-read_excel(fileList[238])
p15.26 <-read_excel(fileList[239])
p15.27 <-read_excel(fileList[240])
p15.28 <-read_excel(fileList[241])
p15.29 <-read_excel(fileList[242])
p15.3 <-read_excel(fileList[243])
p15.30 <-read_excel(fileList[244])
p15.31 <-read_excel(fileList[245])
p15.32 <-read_excel(fileList[246])
p15.35 <-read_excel(fileList[247])
p15.36 <-read_excel(fileList[248])
p15.37 <-read_excel(fileList[249])
p15.38 <-read_excel(fileList[250])
p15.39 <-read_excel(fileList[251])
p15.4 <-read_excel(fileList[252])
p15.42 <-read_excel(fileList[253])
p15.43 <-read_excel(fileList[254])
p15.44 <-read_excel(fileList[255])
p15.5 <-read_excel(fileList[256])
p15.6 <-read_excel(fileList[257])
p15.7 <-read_excel(fileList[258])
p15.8 <-read_excel(fileList[259])
p15.9 <-read_excel(fileList[260])

p16.1 <-read_excel(fileList[261])
p16.10 <-read_excel(fileList[262], col_names = FALSE)
p16.11 <-read_excel(fileList[263], col_names = FALSE)
p16.12 <-read_excel(fileList[264])
p16.13 <-read_excel(fileList[265], col_names = FALSE)
p16.14 <-read_excel(fileList[266], col_names = FALSE)
p16.15 <-read_excel(fileList[267], col_names = FALSE)
p16.17 <-read_excel(fileList[268])
p16.18 <-read_excel(fileList[269], col_names = FALSE)
p16.19 <-read_excel(fileList[270], col_names = FALSE)
p16.2 <-read_excel(fileList[271], col_names = FALSE)
p16.24 <-read_excel(fileList[272], col_names = FALSE)
p16.25 <-read_excel(fileList[273], col_names = FALSE)
p16.3 <-read_excel(fileList[274], col_names = FALSE)

p17.1 <-read_excel(fileList[275], col_names = FALSE)
p17.10 <-read_excel(fileList[276])
p17.11 <-read_excel(fileList[277])
p17.12 <-read_excel(fileList[278])
p17.13 <-read_excel(fileList[279])
p17.14 <-read_excel(fileList[280])
p17.15 <-read_excel(fileList[281])
p17.16 <-read_excel(fileList[282])
p17.17 <-read_excel(fileList[283])
p17.18 <-read_excel(fileList[284])
p17.19 <-read_excel(fileList[285])
p17.2 <-read_excel(fileList[286], col_names = FALSE)
p17.20 <-read_excel(fileList[287])
p17.21 <-read_excel(fileList[288])
p17.22 <-read_excel(fileList[289])
p17.23 <-read_excel(fileList[290])
p17.24 <-read_excel(fileList[291])
p17.25 <-read_excel(fileList[292])
p17.26 <-read_excel(fileList[293])
p17.27 <-read_excel(fileList[294])
p17.28 <-read_excel(fileList[295])
p17.31 <-read_excel(fileList[296])
p17.32 <-read_excel(fileList[297])
p17.33 <-read_excel(fileList[298])
p17.34 <-read_excel(fileList[299])
p17.35 <-read_excel(fileList[300])
p17.36 <-read_excel(fileList[301])
p17.37 <-read_excel(fileList[302])
p17.38 <-read_excel(fileList[303])
p17.39 <-read_excel(fileList[304])
p17.40 <-read_excel(fileList[305])
p17.41 <-read_excel(fileList[306])
p17.42 <-read_excel(fileList[307])
p17.43 <-read_excel(fileList[308])
p17.44 <-read_excel(fileList[309])
p17.45 <-read_excel(fileList[310])
p17.46 <-read_excel(fileList[311])
p17.47 <-read_excel(fileList[312])
p17.48 <-read_excel(fileList[313])
p17.49 <-read_excel(fileList[314])
p17.5 <-read_excel(fileList[315], col_names = FALSE)
p17.50 <-read_excel(fileList[316])
p17.51 <-read_excel(fileList[317])
p17.52 <-read_excel(fileList[318])
p17.53 <-read_excel(fileList[319])
p17.54 <-read_excel(fileList[320])
p17.55 <-read_excel(fileList[321])
p17.56 <-read_excel(fileList[322])
p17.57 <-read_excel(fileList[323])
p17.58 <-read_excel(fileList[324])
p17.59 <-read_excel(fileList[325])
p17.6 <-read_excel(fileList[326], col_names = FALSE)
p17.60 <-read_excel(fileList[327])
p17.7 <-read_excel(fileList[328])
p17.8 <-read_excel(fileList[329])
p17.9 <-read_excel(fileList[330])

p18.16 <-read_excel(fileList[331])
p18.17 <-read_excel(fileList[332])
p18.18 <-read_excel(fileList[333])
p18.19 <-read_excel(fileList[334])
p18.20 <-read_excel(fileList[335])
p18.21 <-read_excel(fileList[336])
p18.22 <-read_excel(fileList[337])
p18.23 <-read_excel(fileList[338])
p18.4 <-read_excel(fileList[339])
p18.5 <-read_excel(fileList[340])
p18.8 <-read_excel(fileList[341])
p18.9 <-read_excel(fileList[342])
devtools::use_data(p14.11, p14.13, p14.14 ,p14.17 ,p14.18 ,p14.2 ,p14.27 ,p14.28 ,
  p14.29 ,p14.3 ,p14.30 ,p14.31 ,p14.32 ,p14.33 ,p14.34 ,p14.35 ,p14.37 ,
  p14.4 ,p14.5 ,p14.6 ,p14.7 ,p14.8 ,p15.1 ,p15.10 ,p15.11 ,p15.12 ,p15.13 ,p15.14 ,
  p15.15, p15.17 ,p15.19 ,p15.2 ,p15.20 ,p15.21 ,p15.22 ,p15.23 ,p15.24 ,
  p15.25 ,p15.26 ,p15.27 ,p15.28 ,p15.29 ,p15.3 ,p15.30 ,p15.31 ,p15.32 ,
  p15.35 ,p15.36 ,p15.37 ,p15.38 ,p15.39 ,p15.4 ,p15.42 ,p15.43 ,p15.44 ,p15.5 ,
  p15.6 ,p15.7 ,p15.8 ,p15.9 ,p16.1 ,p16.10 ,p16.11 ,p16.12,p16.13 ,p16.14 ,p16.15 ,
  p16.17 ,p16.18 ,p16.19 ,p16.2 ,p16.24 ,p16.25 ,p16.3 ,p17.1 ,p17.10 ,p17.11 ,
  p17.12 ,p17.13 ,p17.14 ,p17.15 ,p17.16 ,p17.17 ,p17.18 ,p17.19 ,p17.2 ,p17.20 ,
  p17.21 ,p17.22 ,p17.23 ,p17.24 ,p17.25 ,p17.26 ,p17.27 ,p17.28 ,p17.31 ,
  p17.32, p17.33 ,p17.34 ,p17.35 ,p17.36 ,p17.37 ,p17.38 ,p17.39 ,p17.40 ,
  p17.41 ,p17.42 ,p17.43 ,p17.44 ,p17.45 ,p17.46 ,p17.47,p17.48 ,p17.49 ,
  p17.5 ,p17.50 ,p17.51 ,p17.52,p17.53 ,p17.54 ,p17.55 ,p17.56 ,p17.57 ,
  p17.58 ,p17.59 ,p17.6 ,p17.60 ,p17.7 ,p17.8 ,p17.9 ,p18.16 ,p18.17 ,p18.18 ,p18.19 ,p18.20 ,p18.21 ,p18.22 ,p18.23 ,p18.4 ,p18.5 ,
  p18.8 ,p18.9, overwrite=TRUE)

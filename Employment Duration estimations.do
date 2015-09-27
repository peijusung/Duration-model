*****What is the effect of on-the-job training on employment duration for mothers?
***** Data source: the National Longitudinal Survey (NLS) of Mature Women





clear
use "/Users/abusung/Desktop/marriage/duration/duration.dta"




*age 
joinby(id time ) using "/Users/abusung/Desktop/marriage/age/age.dta"
*race
joinby(id time ) using "/Users/abusung/Desktop/marriage/race/race.dta"
*urban
joinby(id time ) using "/Users/abusung/Desktop/marriage/SMSA/smsa.dta"
*year start marriage

*education
joinby(id time ) using "/Users/abusung/Desktop/marriage/edu/edu.dta"
*H education
joinby(id time ) using "/Users/abusung/Desktop/marriage/husband_edu/husband_edu.dta"
*income
joinby(id time ) using "/Users/abusung/Desktop/marriage/income/income.dta"
*wage
joinby(id time ) using "/Users/abusung/Desktop/marriage/work_hour/wage.dta"
*H income
joinby(id time ) using "/Users/abusung/Desktop/marriage/hincome/hincome.dta"
*nonlabor income
joinby(id time ) using "/Users/abusung/Desktop/marriage/nonlabor/nonlabor.dta"
*numbers of children
joinby(id time ) using "/Users/abusung/Desktop/marriage/children/children.dta"
*LFP
joinby(id time ) using "/Users/abusung/Desktop/marriage/LFP/LFP.dta"
*numbers of adult
joinby(id time ) using "/Users/abusung/Desktop/marriage/member/adult.dta"





save "/Users/abusung/Desktop/marriage/final.dta",replace
 clear
 
 
 
 
 
clear

infile dictionary using  /Users/abusung/Desktop/marriage/marital_status/default.dct
clear
infile  using  /Users/abusung/Desktop/marriage/marital_status/default.dct

  

rename R0000100 id

gen mar68=0
replace mar68=1 if R0003300==1 
replace mar68=1 if R0003300==2 
replace mar68=1 if R0003300==3 
replace mar68=. if R0003300<0


gen mar69=0
replace mar69=1 if R0086200==1 
replace mar69=1 if R0086200==2 
replace mar69=1 if R0086200==3 
replace mar69=. if R0086200<0 

gen mar70=0
replace mar70=1 if R0146100==1 
replace mar70=1 if R0146100==2 
replace mar70=1 if R0146100==3 
replace mar70=. if R0146100<0 


gen mar71=0
replace mar71=1 if R0253300==1 
replace mar71=1 if R0253300==2 
replace mar71=1 if R0253300==3 
replace mar71=. if R0253300<0 



gen mar72=0
replace mar72=1 if R0334400==1 
replace mar72=1 if R0334400==2 
replace mar72=1 if R0334400==3 
replace mar72=. if R0334400<0 


gen mar73=0
replace mar73=1 if R0417200==1 
replace mar73=1 if R0417200==2 
replace mar73=1 if R0417200==3 
replace mar73=. if R0417200<0 
 
gen mar75=0
replace mar75=1 if R0519600==1 
replace mar75=1 if R0519600==2 
replace mar75=1 if R0519600==3 
replace mar75=. if R0519600<0 

gen mar77=0
replace mar77=1 if R0581000==1 
replace mar77=1 if R0581000==2 
replace mar77=1 if R0581000==3 
replace mar77=. if R0581000<0 

gen mar78=0
replace mar78=1 if  R0587500==1 
replace mar78=1 if  R0587500==2 
replace mar78=1 if  R0587500==3 
replace mar78=. if  R0587500<0 

gen mar80=0
replace mar80=1 if  R0710000==1 
replace mar80=1 if  R0710000==2 
replace mar80=1 if  R0710000==3 
replace mar80=. if  R0710000<0 

gen mar82=0
replace mar82=1 if  R0756500==1 
replace mar82=1 if  R0756500==2 
replace mar82=1 if  R0756500==3 
replace mar82=. if  R0756500<0 

gen mar83=0
replace mar83=1 if  R0940700==1 
replace mar83=1 if  R0940700==2 
replace mar83=1 if  R0940700==3 
replace mar83=. if  R0940700<0 

gen mar85=0
replace mar85=1 if  R0947400==1 
replace mar85=1 if  R0947400==2 
replace mar85=1 if  R0947400==3 
replace mar85=. if  R0947400<0 


gen mar87=0
replace mar87=1 if  R1063000==1 
replace mar87=1 if  R1063000==2 
replace mar87=1 if  R1063000==3 
replace mar87=. if  R1063000<0 


gen mar88=0
replace mar88=1 if  R1221000==1 
replace mar88=1 if  R1221000==2 
replace mar88=1 if  R1221000==3 
replace mar88=. if  R1221000<0 

      

gen mar91=0
replace mar91=1 if  R1352700==1 
replace mar91=1 if  R1352700==2 
replace mar91=1 if  R1352700==3 
replace mar91=. if  R1352700<0 

gen mar93=0
replace mar93=1 if  R1569900==1 
replace mar93=1 if  R1569900==2 
replace mar93=1 if  R1569900==3 
replace mar93=. if  R1569900<0 

gen mar95=0
replace mar95=1 if  R1664710==1 
replace mar95=1 if  R1664710==2 
replace mar95=1 if  R1664710==3 
replace mar95=. if  R1664710<0 

gen mar97=0
replace mar97=1 if  R3507200==1 
replace mar97=1 if  R3507200==2 
replace mar97=1 if  R3507200==3 
replace mar97=. if  R3507200<0

gen mar99=0
replace mar99=1 if  R4278200==1 
replace mar99=1 if  R4278200==2 
replace mar99=1 if  R4278200==3 
replace mar99=. if  R4278200<0 

gen mar01=0
replace mar01=1 if  R5447500==1 
replace mar01=1 if  R5447500==2 
replace mar01=1 if  R5447500==3 
replace mar01=. if  R5447500<0 


gen mar03=0
replace mar03=1 if  R6516200==1 
replace mar03=1 if  R6516200==2 
replace mar03=1 if  R6516200==3 
replace mar03=. if  R6516200<0 







save "/Users/abusung/Desktop/marriage/marital_status/marital.dta",replace

keep id mar68 mar69 mar70 mar71 mar72 mar73 mar75 mar77 mar78 mar80 mar82 mar83 mar85 mar87 mar88 mar91 mar93 mar95 mar97 mar99 mar01 mar03

save "/Users/abusung/Desktop/marriage/marital_status/marital1.dta",replace

clear

infile dictionary using  /Users/abusung/Desktop/marriage/marital_status/default.dct
clear
infile  using  /Users/abusung/Desktop/marriage/marital_status/default.dct

rename R0003300 m1
rename R0086200 m2
rename R0146100 m3
rename R0253300 m4
rename R0334400 m5
rename R0417200 m6
rename R0519600 m7
rename R0581000 m8
rename R0587500 m9
rename R0710000 m10
rename R0756500 m11
rename R0940700 m12
rename R0947400 m13
rename R1063000 m14
rename R1221000 m15
rename R1352700 m16
rename R1569900 m17
rename R1664710 m18
rename R3507200 m19
rename R4278200 m20
rename R5447500 m21
rename R6516200 m22

forvalues x = 1/22  {
gen mar`x' =0
replace mar`x'=1 if m`x'==1 
replace mar`x'=1 if m`x'==2
replace mar`x'=1 if m`x'==3
replace mar`x'=. if m`x'<0
}
save "/Users/abusung/Desktop/marriage/marital_status/marital_loop.dta",replace



 
use "/Users/abusung/Desktop/marriage/final.dta"

keep if start==time
keep id duration year_marriage end_marriage end start age black adult urban LFP dropout highschool college h_dropout h_highschool h_college income wage hinc nonlabor children
rename adult adult0 
rename urban urban0
rename LFP LFP0
rename dropout dropout0
rename highschool highschool0
rename college college0
rename h_dropout h_dropout0
rename h_highschool h_highschool0
rename h_college h_college0
rename income income0
rename wage wage0
rename hinc hinc0
rename nonlabor nonlabor0
rename children children0
save "/Users/abusung/Desktop/marriage/final/begin.dta",replace


use "/Users/abusung/Desktop/marriage/final.dta"

keep if end==time

keep id urban dropout highschool college h_dropout h_highschool h_college income wage hinc nonlabor children LFP adult

save "/Users/abusung/Desktop/marriage/final/end.dta",replace

joinby(id ) using "/Users/abusung/Desktop/marriage/final/begin.dta"

save "/Users/abusung/Desktop/marriage/final/finalend.dta",replace

clear

use "/Users/abusung/Desktop/marriage/final.dta"

keep if marry==1

collapse(mean) income wage hinc nonlabor adult, by(id)

rename income income1
rename  wage wage1
rename  hinc hinc1 
rename nonlabor nonlabor1
rename  adult adult1

save "/Users/abusung/Desktop/marriage/final/avg.dta",replace

joinby(id ) using "/Users/abusung/Desktop/marriage/final/finalend.dta"

gen lhinc=ln(hinc1)
gen lnonlabor=ln(nonlabor1)
gen starty=2003-year_marriage

save "/Users/abusung/Desktop/marriage/final/finalend.dta",replace

export excel using "/Users/abusung/Desktop/marriage/data2.xls", firstrow(variables)


clear
use"/Users/abusung/Desktop/marriage/final/finalend.dta"

clear
 
use "/Users/abusung/Desktop/marriage/final.dta"

gen failure=1
replace failure=0 if end==22 & end_marriage==2003
gen failure=1

replace failure=0 if time==22 & end_marriage==2003


bysort id : gen t = _n



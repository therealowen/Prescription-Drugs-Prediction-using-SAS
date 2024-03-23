/* SAS Input statements for W2.SF.DATA.SF11.D020321.DAT */
options nocenter mergenoby = error validvarname = upcase; options formchar='|-+'; /* Set Vertical, Horizontal, Intersections */
%let w2sf =\\Client\C$\SAS\Data\w2_sf_data_sf11_d020321.dat ;
PROC FORMAT;
VALUE P11L (default=40) 1 ='Under 5 years'
2 ='5-17 years'
3 ='18-24 years'
4 ='25-44 years'
5 ='45-64 years'
6 ='65-69 years'
7 ='70-74 years'
8 ='75 years and over'
;
VALUE P916L (default=40)
0 = "None"
1 = "One or Two"
2 = "Three to five"
3 = "Six to Nine"
4 = "Ten or More"
8 = "Not ascertained" 9 = "DK or refused"
;
VALUE P24L (default=40)
1='Non-veteran'
2='WW I'
3='WW II'
4='Korean War'
5='Vietnam veteran'
6='Post-Vietnam'
7='Other service'
8='Served in Armed Forces, unknown if wa...' /*r veteran*/ 9='Unknown if served in Armed Forces'
;
VALUE P126L (default=40)
01 ='Single family house or townhouse, not...' /* part of retirement community*/
02 ='Single family house, townhouse, or ap...' /*artment that is part of retirement community*/ 03 ='Regular apartment'
04 ='Supervised apartment'
05 ='Group home'
06 ='Halfway house'
07 ='Personal care or board and care home'
08 ='Developmental center'
09 ='Other type of supervised group reside...' /*nce or facility*/
10 ='Assisted living facility'
11 ='Nursing or convalescent home'
12 ='Retirement home'
13 ='Center for Independent Living'
14 ='Something else'
98 ='Not ascertained'
99 ='DK or refused'
;
 VALUE P1197L (default=40) 0 ='Never smoked'
1 ='Current smoker'
2 ='Former smoker'
3 ='Unknown if current/former smoker'
9 ='Unknown if ever smoked' ;
VALUE P40L (default=40) 1 ='Excellent'
2 ='Very Good'
3 ='Good'
4 ='Fair'
5 ='Poor'
6 ='Unknown'
;
VALUE Q206Q
93 = "SAQ Leg. Skip"
94 = "Missing-Breakoff"
95 = "Missing-CATI Error"
96 = "Missing (SAQ)"
97 = "Refused"
98 = "Ineligible for Wave 2; Proxy Decedent interview" 99 = "Dont Know"
1 = "Better"
2 = "About the Same" 3 = "Worse"
;
VALUE P27L (default=40)
0='None; kindergarten only'
1='1-8 years (elementary)'
2='9-11 years (high school)'
3='12 years (high school graduate)' 4='1-3 years (college)'
5='4 years (college graduate)' 6='5 or more years (post-college)' 7='Unknown'
;
VALUE P31L (default=40)
00 ='Less than $1,000' 01 ='$1,000-$1,999' 02 ='$2,000-$2,999' 03 ='$3,000-$3,999' 04 ='$4,000-$4,999' 05 ='$5,000-$5,999' 06 ='$6,000-$6,999' 07 ='$7,000-$7,999' 08 ='$8,000-$8,999' 09 ='$9,000-$9,999' 10 ='$10,000-$10,999' 11 ='$11,000-$11,999' 12 ='$12,000-$12,999' 13 ='$13,000-$13,999' 14 ='$14,000-$14,999' 15 ='$15,000-$15,999' 16 ='$16,000-$16,999' 17 ='$17,000-$17,999' 18 ='$18,000-$18,999' 19 ='$19,000-$19,999' 20 ='$20,000-$24,999' 21 ='$25,000-$29,999' 22 ='$30,000-$34,999' 23 ='$35,000-$39,999' 24 ='$40,000-$44,999' 25 ='$45,000-$49,999' 26 ='$50,000 and over' 27 ='Unknown'

 ;
VALUE P1053L (default=40)
0 ='Less than 1 year' 1 ='1-4 years'
2 ='5-9 years'
3 ='10-14 years'
4 ='15-19 years'
5 ='20 years and over'
7 ='Unknown how long married'
8 ='Not married'
9 ='Unknown current marital status'
;
VALUE P9L (default=40)
1 ='Male'
2 ='Female' ;
VALUE P18L (default=40) 01 ='White'
02 ='Black'
03 ='Indian (American)' 04 ='Eskimo'
05 ='Aleut'
06 ='Chinese'
07 ='Filipino'
08 ='Hawaiian'
09 ='Korean'
10 ='Vietnamese' 11 ='Japanese'
12 ='Asian Indian' 13 ='Samoan'
14 ='Guamanian' 15 ='Other API'
16 ='Other Race' 17 ='Multiple Race' 99 ='Unknown'
;
VALUE P46L (default=40)
0='Not in labor force'
1='Private company'
2='Federal Government employee' 3='State Government employee' 4='Local Government employee' 5='Incorporated business' 6='Self-employed'
7='Without pay'
8='Never worked'
9='Unknown'
;
VALUE P33L (default=40)
1 ='At or above poverty threshold' 2 ='Below poverty threshold'
3 ='Unknown'
;
VALUE P54L (default=40)
1 ='Condition List 1, Skin and musculoske...' /*letal*/ 2 ='Condition List 2, Impairments'
3 ='Condition List 3, Digestive'
4 ='Condition List 4, Miscellaneous'
5 ='Condition List 5, Circulatory' 6 ='Condition List 6, Respiratory' 7 ='Unknown'
;
VALUE P65L (default=40)
1 ='Northeast' 2 ='Midwest' 3 ='South'

 4 ='West' ;
VALUE Q455Q
93 = "SAQ Leg. Skip"
94 = "Missing-Breakoff"
95 = "Missing-CATI Error"
96 = "Missing (SAQ)"
97 = "Refused"
98 = "Ineligible for Wave 2; Proxy Decedent interview" 99 = "Dont Know"
1 = "More Active"
2 = "Less Active"
3 = "About the Same"
;
VALUE P1198L (default=40)
0 ='Never smoked'
1 ='Current smoker-everyday'
2 ='Current smoker-some days'
3 ='Former smoker'
4 ='Unknown if current/former smoker' 9 ='Unknown if ever smoked'
; run;
data w2sf11 ;
length
SF29 3
SF1351 3 SF49 3 SF431 3 SF1770 3 SF70 3 SF2793 3 SF53 3 SF58 3 SF1544 3 SF25 3 SF41 3 SF76 3 SF61 3 SF92 3 SF182 3 SF2821 3
;
label SF29 SF1351 SF49 SF431 SF1770 SF70 SF2793 SF53 SF58 SF1544 SF25 SF41 SF76 SF61 SF92 SF182 SF2821 ;
= "AGE"
= "NUMBER OF PRESCRIPTION MEDICINES YOU ARE SUPPOSED TO TAKE "
= "VETERAN STATUS "
= "TYPE OF RESIDENCE " = "CURRENT SMOKER I "
= "HEALTH STATUS "
= "SP'S HEALTH SINCE LAST INTERVIEW "
= "EDUCATION OF INDIVIDUAL RECODE " = "FAMILY INCOME "
= "LENGTH OF TIME MARRIED TO CURRENT SPOUSE " ="SEX"
= "MAIN RACIAL BACKGROUND - REPORTED "
= "CLASS OF WORKER "
= "NHIS POVERTY INDEX* "
= "CONDITION LIST ASSIGNED AND ASKED "
= "REGION "
= "PHYSICAL ACTIVITY MORE/LESS/SAME "

 infile "&w2sf" lrecl=3660 pad ;
input SF29
SF1351 SF49 SF431 SF1770 SF70 SF2793 SF53 SF58 SF1544 SF25 SF41 SF76 SF61 SF92 SF182 SF2821
FORMAT SF29 p11L. ; FORMAT SF1351 P916L. ; FORMAT SF49 P24L. ; FORMAT SF431 P126L. ; FORMAT SF1770 P1198L. ; FORMAT SF70 P40L. ; FORMAT SF2793 Q206Q. ; FORMAT SF53 P27L. ; FORMAT SF58 P31L. ; FORMAT SF1544 P1053L. ; FORMAT SF25 P9L. ; FORMAT SF41 P18L. ; FORMAT SF76 P46L. ; FORMAT SF61 P33L. ; FORMAT SF92 P54L. ; FORMAT SF182 P65L. ; FORMAT SF2821 Q455Q. ;
if SF1351=8 OR SF1351=9 OR SF1351="." THEN DELETE; if SF1351>=2 and SF1351<=4 then Y=1;
else Y=0;
if SF49=9 OR SF49="." THEN DELETE; If SF49=1 THEN Verteran=1;
if SF49=2 then Verteran=2;
IF SF49=3 then Verteran=3;
IF SF49>=4 THEN Verteran=0;
if SF431=98 OR SF431=99 OR SF431="." THEN DELETE; if SF431=01 or SF431=02 then Res=2;
if SF431=03 OR SF431=04 then Res=1;
if SF431>=05 then Res=0;
if SF1770=4 OR SF1770=9 OR SF1770="." THEN DELETE; if SF1770=0 then Smoker=0;
if SF1770=1 OR SF1770=2 then Smoker=1;
if SF1770=3 then Smoker=2;
if SF70=6 OR SF70="." THEN DELETE;
if SF2793<=99 AND SF2793>=93 OR SF2793="." THEN DELETE; if SF53=7 OR SF53="." THEN DELETE;
;
29-29 1351- 1351
49-49 431 - 432
1770- 1770 70-70
2793- 2794 53-53 58-59
1544- 1544 25-25 41-42 76-76 61-61 92-92
182 - 182 2821- 2822

 if SF53<=1 then Ed=1;
if SF53<=3 and SF53>=2 then Ed=2; if SF53>3 THEN Ed=0;
if SF58=27 OR SF58="." THEN DELETE;
if SF1544=9 OR SF1544="." THEN DELETE; if SF25="." THEN DELETE;
if SF41=99 OR SF41="." THEN DELETE; if SF41=01 THEN Race=1;
if SF41=02 then Race=2;
if SF41>=03 then Race=0;
if SF76=9 OR SF76="." THEN DELETE; if SF76=0 then Worker=0;
if SF76>0 then Worker=1;
if SF61=3 OR SF61="." THEN DELETE; if SF92=7 OR SF92="." THEN DELETE; if SF182="." THEN DELETE;
if SF2821<=99 AND SF2821>=93 OR SF2821="." THEN DELETE; if SF2821=1 then Act=3;
if SF2821=2 THEN Act=1;
if SF2821=3 then Act=2;
run;
PROC SQL;
CREATE TABLE WORK.NEW AS
SELECT SF29, Verteran , Res , Smoker , SF70 , SF2793 , Ed , SF58 , SF1544 , SF25 , Race , Worker , SF61 , SF92 , SF182 , Act, Y FROM WORK.W2SF11;
RUN;
QUIT;
/*Graph Histogram*/
ods graphics on;
ods pdf file="/folders/myfolders/final_pdf";
title 'Analysis of SF1351';
proc univariate data=WORK.NEW noprint;
histogram Y; run;
title 'Analysis of SF49';
proc univariate data=WORK.NEW noprint;
histogram Verteran; run;
title 'Analysis of SF431';
proc univariate data=WORK.NEW noprint;
histogram Res; run;
title 'Analysis of SF1770';
proc univariate data=WORK.NEW noprint;
histogram Smoker; run;
title 'Analysis of SF70';
proc univariate data=WORK.NEW noprint;
histogram SF70; run;
title 'Analysis of SF2793';
proc univariate data=WORK.NEW noprint;

 histogram SF2793; run;
title 'Analysis of SF53';
proc univariate data=WORK.NEW noprint;
histogram Ed; run;
title 'Analysis of SF58';
proc univariate data=WORK.NEW noprint;
histogram SF58; run;
title 'Analysis of SF1544';
proc univariate data=WORK.NEW noprint;
histogram SF1544; run;
title 'Analysis of SF25';
proc univariate data=WORK.NEW noprint;
histogram SF25; run;
title 'Analysis of Race';
proc univariate data=WORK.NEW noprint;
histogram Race; run;
title 'Analysis of SF76';
proc univariate data=WORK.NEW noprint;
histogram Worker; run;
title 'Analysis of SF61';
proc univariate data=WORK.NEW noprint;
histogram SF61; run;
title 'Analysis of SF92';
proc univariate data=WORK.NEW noprint;
histogram SF92; run;
title 'Analysis of SF182';
proc univariate data=WORK.NEW noprint;
histogram SF182; run;
title 'Analysis of SF2821';
proc univariate data=WORK.NEW noprint;
histogram Act; run;
proc corr data=WORK.NEW plots(maxpoints=none); run;
data w2sf11new;
set w2sf11(obs=1000);
run;
proc calis data=WORK.NEW pcorr; run;
ods pdf close;
/* binomial regression with logit link */
proc genmod data = work.NEW ;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act / diat=binomial link=logit;
run;
/*Normal regression with identity link*/
proc genmod data = work.NEW ;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;

 model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act/diat=normal link=identity ;
run;
/*Poisson regression with log link*/
proc genmod data = work.NEW ;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act/diat=poisson link=log ;
run;
/*negative binomial regression with log link*/
proc genmod data = work.NEW ;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act/diat=negbin link=log ;
run;
/*Foreward binomial regression*/
proc logistic data=work.NEW;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act/ selection=foreward ;
run;
/*Backward binomial regression */
proc logistic data=work.NEW;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act / selection=backward ;
run;
/*Do logistic binomial regression backward elimination by treating all the independent variables as numeric*/ proc logistic data=work.NEW;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act / selection=backward ;
run;
/*AIC is higher and also against common sense*/
/*Trying to add some interaction terms and see whether they can be included in the mdel*/
proc logistic data=work.NEW;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act SF61*SF2793 Verteran*SF29 Res*SF61 Res*Verteran Verteran*SF2793/ selection=backward ;
output out=new1 p=pred STDRESCHI=std_res RESCHI=Pearson_res;/*Residuals*/
run;
/*No Improvements, So we can just use the original backward elimination */
/*drop the outliers */ data work.new2;
set work.new1;
if std_res>2 then delete; run;
/*Re-do the logistic backward elimination using the data without outliers*/
proc logistic data=work.NEW2;
Class Verteran(ref="0") Smoker(ref="0") Res(ref="0") Ed(ref="0") Worker(ref="0") Act(ref="3") Race(ref="0") SF25(ref="Female") SF92(REF="Condition List 6, Respiratory") SF182(ref="West")/ param = ref;
model Y(EVENT="1") = SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act/ selection=backward ;

output out=new1 p=pred STDRESCHI=std_res RESCHI=Pearson_res; run;
/*AIC declined, So it is the optional model we could find*/
/* Classification table */ data new3;
set new2;
if pred > 0.40613 then Y_pred=1;/*The mean of Y is 0.40613*/
else Y_pred=0; run;
proc freq order=data;
tables Y*Y_pred/nopercent norow nocol; title 'classification table';
run;
/*Sensitivity=1194/1808=0.6604 Specificity=1717/2733=0.6283*/
data new4 (keep=no SF29 Verteran Res Smoker SF70 SF2793 Ed SF58 SF1544 SF25 Race Worker SF61 SF92 SF182 Act Y yes total); set NEW2;
IF Y=1 THEN yes=1; If Y=0 then yes=0;
If Y=0 then no=1;
IF Y=1 THEN no=0; total = yes+no;
run;
proc genmod data=new4 DESCENDING;* PLOTS=all;
class Smoker(ref="0") Worker(ref="0") Act(ref="3") SF25(ref="Female") / param = ref;
model yes/total = Smoker SF70 SF58 SF1544 SF25 Worker Act/ dist = binomial link = logit LRCI covb type1 type3; output out=out5 p=pred STDRESCHI=std_res RESCHI=Pearson_res;
run;

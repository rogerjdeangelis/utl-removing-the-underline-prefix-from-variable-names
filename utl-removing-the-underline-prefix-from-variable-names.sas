%let pgm=utl-removing-the-underline-prefix-from-variable-names;

Removing the underline prefix from variable names;

github
https://tinyurl.com/34uwuhs3
https://github.com/rogerjdeangelis/utl-removing-the-underline-prefix-from-variable-names

Stackoverflow
https://tinyurl.com/ysy599dn
https://stackoverflow.com/questions/74888978/how-to-remove-underscore-from-column-name-after-transposing-data

FYI: these utility assignements are in my autoexec so they are available;

%let numbersq=%str("1","2","3","4","5","6","7","8","9","10");

%let numbers=1 2 3 4 5 6 7 8 9 10;

%let states50= %sysfunc(compbl(AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT
NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY)) ;

%let states50q="AL","AK","AZ","AR","CA","CO","CT","DE","FL","GA","HI","ID",
               "IL","IN","IA","KS","KY","LA","ME","MD","MA","MI","MN","MS","MO","MT",
               "NE","NV","NH","NJ","NM","NY","NC","ND","OH","OK","OR","PA","RI",
               "SC","SD","TN","TX","UT","VT","VA","WA","WV","WI","WY";

%let monthsq="JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT", "NOV", "DEC" ;
%let months = JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;

/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

%let months = JAN FEB MAR APR MAY JUN JUL AUG SEP OCT NOV DEC;

%array(_mth,values=&months);

data have ;
   %do_over(_mth,phrase=%str(_01?2023 = 1;) );
run;quit;

/*---- if you want the generated code ---*/

data _null_;
   %do_over(_mth,phrase=%str(put "_01?2023 = 1";) );
run;quit;

/**************************************************************************************************************************/
/*                                        |                                                                               */
/* The CONTENTS Procedure                 |    data _null_;                                                               */
/*                                        |       %do_over(_mth,phrase=%str(put "_01?2023 = 1";) );                       */
/*   Variables in Creation Order          |    run;quit;                                                                  */
/*                                        |                                                                               */
/*  #    Variable      Type    Len        |    Gererated code                                                             */
/*                                        |                                                                               */
/*  1    _01JAN2023    Num       8        |     _01JAN2023 = 1                                                            */
/*  2    _01FEB2023    Num       8        |     _01FEB2023 = 1                                                            */
/*  3    _01MAR2023    Num       8        |     _01MAR2023 = 1                                                            */
/*  4    _01APR2023    Num       8        |     _01APR2023 = 1                                                            */
/*  5    _01MAY2023    Num       8        |     _01MAY2023 = 1                                                            */
/*  6    _01JUN2023    Num       8        |     _01JUN2023 = 1                                                            */
/*  7    _01JUL2023    Num       8        |     _01JUL2023 = 1                                                            */
/*  8    _01AUG2023    Num       8        |     _01AUG2023 = 1                                                            */
/*  9    _01SEP2023    Num       8        |     _01SEP2023 = 1                                                            */
/* 10    _01OCT2023    Num       8        |     _01OCT2023 = 1                                                            */
/* 11    _01NOV2023    Num       8        |     _01NOV2023 = 1                                                            */
/* 12    _01DEC2023    Num       8        |     _01DEC2023 = 1                                                            */
/*                                        |                                                                               */
/**************************************************************************************************************************/

/*           _               _
  ___  _   _| |_ _ __  _   _| |_
 / _ \| | | | __| `_ \| | | | __|
| (_) | |_| | |_| |_) | |_| | |_
 \___/ \__,_|\__| .__/ \__,_|\__|
                |_|
*/

/**************************************************************************************************************************/
/*                                                               |                                                        */
/*  The CONTENTS Procedure                                       |                                                        */
/*                                                               |                                                        */
/*                   Variables in Creation Order                 |                                                        */
/*                                                               |                                                        */
/*   #    Variable       Type    Len    Label                    |   SAS LOG                                              */
/*                                                               |                                                        */
/*   1    JAN_01_2023    Num       8    Previous name _01JAN2023 |   NOTE: Renaming variable _01JAN2023 to JAN_01_2023.   */
/*   2    FEB_01_2023    Num       8    Previous name _01FEB2023 |   NOTE: Renaming variable _01FEB2023 to FEB_01_2023.   */
/*   3    MAR_01_2023    Num       8    Previous name _01MAR2023 |   NOTE: Renaming variable _01MAR2023 to MAR_01_2023.   */
/*   4    APR_01_2023    Num       8    Previous name _01APR2023 |   NOTE: Renaming variable _01APR2023 to APR_01_2023.   */
/*   5    MAY_01_2023    Num       8    Previous name _01MAY2023 |   NOTE: Renaming variable _01MAY2023 to MAY_01_2023.   */
/*   6    JUN_01_2023    Num       8    Previous name _01JUN2023 |   NOTE: Renaming variable _01JUN2023 to JUN_01_2023.   */
/*   7    JUL_01_2023    Num       8    Previous name _01JUL2023 |   NOTE: Renaming variable _01JUL2023 to JUL_01_2023.   */
/*   8    AUG_01_2023    Num       8    Previous name _01AUG2023 |   NOTE: Renaming variable _01AUG2023 to AUG_01_2023.   */
/*   9    SEP_01_2023    Num       8    Previous name _01SEP2023 |   NOTE: Renaming variable _01SEP2023 to SEP_01_2023.   */
/*  10    OCT_01_2023    Num       8    Previous name _01OCT2023 |   NOTE: Renaming variable _01OCT2023 to OCT_01_2023.   */
/*  11    NOV_01_2023    Num       8    Previous name _01NOV2023 |   NOTE: Renaming variable _01NOV2023 to NOV_01_2023.   */
/*  12    DEC_01_2023    Num       8    Previous name _01DEC2023 |   NOTE: Renaming variable _01DEC2023 to DEC_01_2023.   */
/*                                                               |                                                        */
/**************************************************************************************************************************/

/*
 ___  __ _ ___   _ __  _ __ ___   ___ ___  ___ ___
/ __|/ _` / __| | `_ \| `__/ _ \ / __/ _ \/ __/ __|
\__ \ (_| \__ \ | |_) | | | (_) | (_|  __/\__ \__ \
|___/\__,_|___/ | .__/|_|  \___/ \___\___||___/___/
                |_|
*/

proc datasets lib=work nodetails nolist ;
   modify have;
    rename
     %do_over(_mth,phrase=%str(_01?2023 = ?_01_2023) );
    run;
   modify have;
    label
     %do_over(_mth,phrase=%str( ?_01_2023 = "Previous name _01?2023") );
run;quit;

/*
__      ___ __  ___   _ __  _ __ ___   ___ ___  ___ ___
\ \ /\ / / `_ \/ __| | `_ \| `__/ _ \ / __/ _ \/ __/ __|
 \ V  V /| |_) \__ \ | |_) | | | (_) | (_|  __/\__ \__ \
  \_/\_/ | .__/|___/ | .__/|_|  \___/ \___\___||___/___/
         |_|         |_|
*/

%utl_submit_wps64("

%array(_mth,values=&months);

data have ;
   %do_over(_mth,phrase=%str(_01?2023 = 1;) );
run;quit;

proc datasets lib=work nodetails nolist ;
   modify have;
    rename
     %do_over(_mth,phrase=%str(_01?2023 = ?_01_2023) );
    run;
   modify have;
    label
     %do_over(_mth,phrase=%str( ?_01_2023 = 'Previous name _01?2023') );
run;quit;

proc contents data=have position;
run;quit;

");

/**************************************************************************************************************************/
/*                                                                                                                        */
/* The WPS System                                                                                                         */
/*                                                                                                                        */
/* File Name                   d:\wrkwps\_TD22348\HAVE.wpd                                                                */
/* WPD Engine Version          3                                                                                          */
/* Large Data Set Support      no                                                                                         */
/*                                                                                                                        */
/*                                      Variables in Creation Order                                                       */
/*                                                                                                                        */
/*       Number    Variable       Type             Len             Pos    Label                                           */
/* _____________________________________________________________________________________________________                  */
/*            1    JAN_01_2023    Num                8               0    Previous name _01JAN2023                        */
/*            2    FEB_01_2023    Num                8               8    Previous name _01FEB2023                        */
/*            3    MAR_01_2023    Num                8              16    Previous name _01MAR2023                        */
/*            4    APR_01_2023    Num                8              24    Previous name _01APR2023                        */
/*            5    MAY_01_2023    Num                8              32    Previous name _01MAY2023                        */
/*            6    JUN_01_2023    Num                8              40    Previous name _01JUN2023                        */
/*            7    JUL_01_2023    Num                8              48    Previous name _01JUL2023                        */
/*            8    AUG_01_2023    Num                8              56    Previous name _01AUG2023                        */
/*            9    SEP_01_2023    Num                8              64    Previous name _01SEP2023                        */
/*           10    OCT_01_2023    Num                8              72    Previous name _01OCT2023                        */
/*           11    NOV_01_2023    Num                8              80    Previous name _01NOV2023                        */
/*           12    DEC_01_2023    Num                8              88    Previous name _01DEC2023                        */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/

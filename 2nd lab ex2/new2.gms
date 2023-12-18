*SET Demand for Cars /CAIRO,ALEX,ASWAN/;
*PARAMETER  A(I)  Demand in Markets
*  /CAIRO         350
*  ALEX          600
* ASWAN         200    /;
*-----------------------------------
Sets
l   Labor by category /GOV,PRIV/
h   Household type /URBAN,RURAL/;
*TABLE  LABOR (l,h) number of workers in thousands.
                   
*URBAN    RURAL
*GOV      400      350
*PRIV   1000     700     ;

PARAMETER A(l,h)
   /GOV.URBAN   400
    GOV.RURAL   350
    PRIV.URBAN  1000
    PRIV.RURAL  700
/;

    
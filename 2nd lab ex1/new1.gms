set i /dv1*dv100/;
display i;
SET u Egyptian Universities
/ Cairo, Alex, Ain-Shams, British, October, German /
pu (u) Public Universities
/ Cairo, Alex, Ain-Shams /
pr (u) Private Universities
/ British, October, German /;

SET C Activities /Agriculture, Industry, Services/;

*SET k Activites /Agriculture, Industry, Services/;
Alias(C,k);
display k;

SET MAP(C,k) mapping set /
    Agriculture.Agriculture
    Agriculture.Services
    Agriculture.Industry
    Industry.Industry
    Services.Agriculture
    Services.Industry /;
    
display MAP


Positive Variables x1,x2;
Variable z;
*declare the equation then define it

*= equiv to =e=
*<= equiv to =l=

Equations obj,const1,const2;

obj..z=e=8*x1+7*x2;

const1.. 4*x1+3*x2=l=18;
const2.. x1+2*x2=l=4;

model nourhan /all/;
solve nourhan using lp max z;

*.l means optimal value
display x1.l,x2.l,z.l;

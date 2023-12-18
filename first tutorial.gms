Set dv /a, b/ 
const /c, d/;  
Parameters cofobj (dv) /a=8, b=7/
rhs (const) /c=18, d=4/;
Table cof (const,dv)
  a b
c 4 3
d 1 2 ;

Positive Variables x(dv);
Variable z;
Equations obj, constraints(const);
obj .. z =e= sum(dv, x(dv)*cofobj(dv));
constraints(const) .. sum(dv, x(dv)*cof(const,dv)) =L= rhs (const);
Model example /all/;
Solve example using LP max z;
Display x.l, z.l;
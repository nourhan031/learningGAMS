sets dv /a,b/
const /c,d/;
parameter cofobj(dv) /a=8,b=7/
rhs(const) /c=18,d=4/;
table cof (const,dv)

        a   b
c       4   3
d       1   2;

Variables z;
Positive Variables x(dv);
Equations ob,constraints(const);
constraints(const).. sum(dv,x(dv)*cof(const,dv))=l=rhs(const);
ob.. z=e= sum(dv,x(dv)*cofobj(dv));
model lp2 /all/;
solve lp2 using lp max z;
display x.l,z.l;
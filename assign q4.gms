Set s /Xa, Xb, Xc, Xd/;

Variables x(s), z;

Equations obj, eq1, eq2, eq3;

eq1.. x('Xa') =e= 5;
eq2.. x('Xb') =g= 10;
eq3(s).. x(s) =l= 30;

obj..z =e= sum(s, x(s));

Model myModel /all/;

Solve myModel using LP minimizing z;

Sets
    i   "types of products"   / Widgets, Gadgets /

Parameters
    a(i)  "profit per unit of each product"  / Widgets 3, Gadgets 2 /
    b(i)  "raw materials needed for each product" / Widgets 2, Gadgets 1 /
    c    "total raw materials available" / 6 /;

Variables
    x(i)  "number of units to produce of each product"
    z     "total profit";

Positive Variable x;

Equations
    profit        "definition of total profit"
    raw_materials "raw materials constraint";

profit..        z  =e= sum(i, a(i)*x(i));

raw_materials.. sum(i, b(i)*x(i))  =l= c;

Model manufacturing /all/;

Solve manufacturing using LP maximizing z;

Display x.l, z.l;

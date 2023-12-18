Sets
    Fruits /Mango, Orange, Peach/;

Parameters
    Production(Fruits) /Mango 100, Orange 300, Peach 500/
    Price(Fruits) /Mango 20, Orange 5, Peach 10/;

Scalar TotalRevenue;

TotalRevenue = sum(Fruits, Production(Fruits) * Price(Fruits));

Display TotalRevenue;

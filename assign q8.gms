Sets
    Products / P1, P2, P3, P4, P5 /;

Parameters
    cost(Products) / P1 100, P2 200, P3 30, P4 50 /,
    quantity(Products) / P1 10, P2 100, P3 200, P4 20, P5 40 /;

Scalar threshold;
threshold = 100;

Parameter
    totalCost;

totalCost = sum(Products$(quantity(Products) > threshold), cost(Products));

Display cost, quantity, totalCost;

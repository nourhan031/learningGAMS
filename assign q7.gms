Sets
    i / i1, i2, i3, i4, i5 /;

Parameters
    a(i) / i1 2, i2 10 /;

Scalar forbiddenValue1, forbiddenValue2;
forbiddenValue1 = a('i1');
forbiddenValue2 = a('i2');

Parameters
    b(i);

b(i)$(a(i) <> forbiddenValue1 and a(i) <> forbiddenValue2) = a(i) + 5;

Display a, b;

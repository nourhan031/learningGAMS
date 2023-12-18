Set i /1*40/;

Parameter count(i);
Parameter even_numbers(i);

count(i) = ord(i);

Scalar even;

even = 2;

loop(i,
    if(mod(count(i), even) = 0,
        even_numbers(i) = count(i);
    );
);

display even_numbers;

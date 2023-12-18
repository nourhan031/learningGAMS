SET i /first, second /
    j /one, two, three /
    k /m, n /;

PARAMETER ABC(i,j,k) / first.one.m 320.0,
                       first.one.n 96.0,
                       second.one.m 40.0,
                       second.one.n 967.0,
                       first.two.m 25.0,
                       first.two.n 679.0,
                       second.two.m 420.0,
                       second.two.n 67.0,
                       first.three.m 725.0,
                       first.three.n 560.0,
                       second.three.m 426.0,
                       second.three.n 645.0 /;

*option decimals = 2;  

display ABC;

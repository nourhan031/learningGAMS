Sets
   i /1*11/;  

Parameters
   A(i);

Scalar Threshold;
Threshold = 0;

Variables
   A_converted(i)
   obj;

Binary Variables
   A_converted(i);

Equations
   ConversionCondition1(i)
   ConversionCondition2(i)
   Objective;

ConversionCondition1(i)$(A(i) < Threshold)..
   A_converted(i) =e= 0;

ConversionCondition2(i)$(A(i) >= Threshold)..
   A_converted(i) =e= 1;

Objective..
   obj =e= sum(i, A_converted(i));

Model ConvertVector /all/;
Solve ConvertVector using mip minimizing obj;
Display A_converted.l;

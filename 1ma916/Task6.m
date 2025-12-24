clear

A = [1  2  1;
     0 -1  1;
     1  0  1];

B = [0  0  1;
     2  1  0;
     1 -3 -1];

a = [1;
     0;
     4];

b = [-1;
      2;
      1];


AB = A * B
Aa = A * a
BbT = B * b.' 
aA = a * A

aTb = a.' * b
abT = a * b.'
a_dot_b = a .* b
A_dot_B = A .* B


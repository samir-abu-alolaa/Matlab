function Iapprox = riemann(funk,a,b,tol)

n = ceil(abs((b-a)*(funk(b)-funk(a))/tol));
dx = (b - a) / n;

f_low = a:dx:b-dx;
L_FP = dx*sum(funk(f_low));

f_upp = a + dx:dx:b;
U_FP = dx*sum(funk(f_upp));


Iapprox = (L_FP + U_FP) / 2;
function y = F(x)

nedre = 0;
ovre = x;
tol = 0.0001;

result = riemann(@normfunk, nedre, ovre, tol);
y = 0.5 + result;


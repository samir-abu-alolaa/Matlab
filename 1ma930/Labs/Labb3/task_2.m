%[a,b] = sparsesetup(6)
[a,b] = sparsesetup(1e4);
afull = full(a);
spy(a);

tic
%x1 = jacobi(a, b, 1)
%x2 = jacobi(a, b, 2)
x3 = jacobi(a, b, 6);
toc

tic
x4 = jacobi(a, b, 50);
toc
tic
x5 = jacobi(afull, b, 50);
toc
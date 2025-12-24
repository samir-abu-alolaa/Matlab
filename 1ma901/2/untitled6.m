n = 100
A= floor(10 * rand(n));
b = sum(A')';
z = ones(n, 1);
C = sym(A)

tic, x = A\b; toc

tic, x = C\b; toc

tic, y = inv(A) * b; toc

tic, y = inv(C) * b; toc

max(abs(x - z))

max(abs(x - C))

ansss = max(abs(C - z))

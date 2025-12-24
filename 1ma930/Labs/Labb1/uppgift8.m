a = 1;
b = 3;
c = -8.^(-14);

x1 = x1_root(a, b, c)
x2 = x2_root(a, b, c)
x3 = c/(a*x1)

fprintf('x1 = %.4g\n', x1);
fprintf('x2 = %.4g\n', x2);
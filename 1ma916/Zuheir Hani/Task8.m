figure(1)
clf
hold on
grid on
axis equal

[X, Y, Z] = sphere(50);

X = 6 * X;
Y = 6 * Y;
Z = 6 * Z;

X = X - 2;
Y = Y + 1;
Z = Z + 3;

surf(X, Y, Z)

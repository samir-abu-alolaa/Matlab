function z = lagrange(x, y1, y2, y3, x1, x2, x3)

L1 = y1 * ((x - x2)*(x - x3)) / ((x1 - x2)*(x1 - x3));
L2 = y2 * ((x - x1)*(x - x3)) / ((x2 - x1)*(x2 - x3));
L3 = y3 * ((x - x1)*(x - x2)) / ((x3 - x1)*(x3 - x2));

z = L1 + L2 + L3;
end

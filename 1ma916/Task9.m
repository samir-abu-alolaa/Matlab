figure(1)
clf
x = -5:0.1:5;
y = -5:0.1:5;
[X, Y] = meshgrid(x, y);

% (1) z = sqrt(2x^2 + y^2)
Z1 = sqrt(2*X.^2 + Y.^2);
subplot(4,2,1)
surf(X, Y, Z1)
title('z = sqrt(2x^2 + y^2)')
subplot(4,2,2)
contour(X, Y, Z1)
title('Contour')

% (2) z = sin(x + 5y)
Z2 = sin(X + 5*Y);
subplot(4,2,3)
surf(X, Y, Z2)
title('z = sin(x+5y)')
subplot(4,2,4)
contour(X, Y, Z2)
title('Contour')

% (3) z = x^2/2 - y^2/9
Z3 = (X.^2)/2 - (Y.^2)/9;
subplot(4,2,5)
surf(X, Y, Z3)
title('z = x^2/2 - y^2/9')
subplot(4,2,6)
contour(X, Y, Z3)
title('Contour')

% (4) z = x^2/2 + y^2/9
Z4 = (X.^2)/2 + (Y.^2)/9;
subplot(4,2,7)
surf(X, Y, Z4)
title('z = x^2/2 + y^2/9')
subplot(4,2,8)
contour(X, Y, Z4)
title('Contour')

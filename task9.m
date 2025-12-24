figure(1)
clf

% 1. z = sqrt(2x^2 + y^2)
[X, Y] = meshgrid(0:0.1:1);
Z = sqrt(2*X.^2 + Y.^2);
subplot(4, 2, 1)
surf(X, Y, Z)
title('Surface 1')
subplot(4, 2, 2)
contour(X, Y, Z)
title('Contour 1')

% 2. z = sin(x + 5y)
[X, Y] = meshgrid(0:0.1:10);
Z1 = sin(X + 5*Y);
subplot(4, 2, 3)
surf(X, Y, Z1)
title('Surface 2')
subplot(4, 2, 4)
contour(X, Y, Z1)
title('Contour 2')

% 3. z = (x^2)/2 - (y^2)/9
[X, Y] = meshgrid(0:0.1:1);
Z2 = (X.^2)/2 - (Y.^2)/9;
subplot(4, 2, 5)
surf(X, Y, Z2)
title('Surface 3')
subplot(4, 2, 6)
contour(X, Y, Z2)
title('Contour 3')

% 4. z = (x^2)/2 + (y^2)/9
[X, Y] = meshgrid(0:0.1:1);
Z3 = (X.^2)/2 + (Y.^2)/9;
subplot(4, 2, 7)
surf(X, Y, Z3)
title('Surface 4')
subplot(4, 2, 8)
contour(X, Y, Z3)
title('Contour 4')

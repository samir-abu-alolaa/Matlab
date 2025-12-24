x_y_range = 0:0.1:2*pi;   % longitude
z_xy_range = 0:0.1:pi;    % colatitude
[Theta, Phi] = meshgrid(x_y_range, z_xy_range);  % 2D grids

X = cos(Theta) .* sin(Phi);
Y = sin(Theta) .* sin(Phi);
Z = cos(Phi);

surf(X, Y, Z)
axis equal
title('Unit sphere')

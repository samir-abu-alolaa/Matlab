rng(7)
n = 30;
center = [0 0];
radius = 1;
eps = 0.1;
r = eps*rand(n,1) + radius-eps/2;
A = [center(1) + r.*cos(2*pi*(1:n)'/n) center(2) + r.*sin(2*pi*(1:n)'/n)];
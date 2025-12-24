% Define range
[x,y] = meshgrid(-3:0.1:3, -3:0.1:3);

% Define function
f = x*y;

% Surface plot
surf(x,y,f)
xlabel('x'); ylabel('y'); zlabel('f(x,y)');


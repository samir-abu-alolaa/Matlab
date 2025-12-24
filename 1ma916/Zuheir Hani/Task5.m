clear

t = 0 : 0.01 : 20 * 2*pi;

x = 2 * cos(t);
y = 2 * sin(t);
z = t / (2*pi);

plot3(x, y, z)

u = [3, 3, -1];
v = [2, 4, -1];
w = [1, 1, 6];

figure;

plot3([0 u(1)], [0 u(2)], [0 u(3)], "LineWidth", 2, "Marker", "o", "MarkerSize", 7);

hold on 

plot3([0 v(1)], [0 v(2)], [0 v(3)], "LineWidth", 2, "Marker", "*", "MarkerSize", 7);

plot3([0 w(1)], [0 w(2)], [0 w(3)], "LineWidth", 2, "Marker", "x", "MarkerSize", 7);

xlabel("x")
ylabel("y")
zlabel("z")

X = [6,6,-6,-6];
Y = [6,-6,-6,6];
Z = [-2,0,2,0];

fill3(X, Y, Z, "b", "FaceAlpha", 0.4)

axis equal;

hold off
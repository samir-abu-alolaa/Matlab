f1 = @(u,v) u.^2 + v.^2 - 1;
f2 = @(u,v) (u - 1).^2 + v.^2 - 1;

figure;
fimplicit(f1, [-1.5 2 -1.5 1.5], 'b', 'LineWidth', 1.5); 
hold on;
fimplicit(f2, [-1.5 2 -1.5 1.5], 'r', 'LineWidth', 1.5);

u_sol = 0.5;
v_sol = sqrt(3)/2;
plot(u_sol, v_sol);
plot(u_sol, -v_sol);
grid on
hold off

x = [1, 1];
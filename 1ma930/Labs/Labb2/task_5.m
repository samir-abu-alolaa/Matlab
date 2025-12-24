syms x
A = [1, 2, 3, x; 4, 5, x, 6; 7, 8, 9, 2; 10, 11, 12, 13];
determinant = det(A) -1000;

f = @task_5_func;
tol = 0.5 * 10.^-6;
x_bisect_1 = bisect(f,-21, -19, tol)
x_bisect_2 = bisect(f, 5, 7, tol)

line = linspace(-100, 100, 10000);
y_plot = task_5_func(line);
x_axis = zeros(size(line));
hold on
plot(line, y_plot, 'k')
plot(line, x_axis, 'b--')
hold off
grid on

x1 = x_bisect_1;
x2 = x_bisect_2;

A1 = [1, 2, 3, x1; 4, 5, x1, 6; 7, 8, 9, 2; 10, 11, 12, 13];
A2 = [1, 2, 3, x2; 4, 5, x2, 6; 7, 8, 9, 2; 10, 11, 12, 13];

det1 = det(A1);
det2 = det(A2);

back_err_1 = abs(det1 - 1000) / 1000;
back_err_2 = abs(det2 - 1000) / 1000;

fprintf('Backward error x1: %.2e\n', back_err_1);
fprintf('Backward error x2: %.2e\n', back_err_2);
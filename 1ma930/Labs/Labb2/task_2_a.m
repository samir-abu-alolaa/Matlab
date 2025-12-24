p = [1 0 2 1];
root = roots(p)

line = linspace(-10, 10, 10000);
y_plot = task_2_func(line);

plot(line, y_plot)
yline(0, 'k--');
xline(0, 'k--');
grid on
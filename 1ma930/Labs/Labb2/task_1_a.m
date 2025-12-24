line = linspace(-2, 8, 10000);
y_plot = task_1_func(line);
x_axis = zeros(size(line));
hold on
plot(line, y_plot, 'k')
plot(line, x_axis, 'b--')

x_zeros  = [];
for i = 1:length(line)
    x_guess = line(i);
    zero = fzero(@task_1_func, x_guess);
    x_zeros = [x_zeros zero];
end

zero_found = zeros(size(x_zeros));

plot(x_zeros, zero_found, 'go', 'MarkerSize', 20);

hold off
grid on
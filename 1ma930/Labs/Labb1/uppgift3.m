line = linspace(-1, 1, 1000);
y_plot = f(line);
g_plot = g(line);

hold on
plot(line, y_plot)
plot(line, g_plot)
hold off
grid on
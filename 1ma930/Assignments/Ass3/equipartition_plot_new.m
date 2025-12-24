function equipartition_plot_new(n)
    x_t = @(t) 0.5 + 0.3*t + 3.9*t.^2 - 4.7*t.^3;
    y_t = @(t) 1.5 + 0.3*t + 0.9*t.^2 - 2.7*t.^3;

    t_points = zeros(n+1,1);
    x_points = zeros(n+1,1);
    y_points = zeros(n+1,1);

    for i = 0:n
        s = i / n;
        t_points(i+1) = act_2_new(s);
        x_points(i+1) = x_t(t_points(i+1));
        y_points(i+1) = y_t(t_points(i+1));
    end

    t_line = linspace(0,1,100);
    x = x_t(t_line);
    y = y_t(t_line);
    curve = plot(x, y, 'k-');
    hold on;
    pts = plot(x_points, y_points, 'bo', 'MarkerSize', 8, 'MarkerFaceColor','b');
    hold off;
    title(sprintf('Equipartition with n = %d', n));
    axis equal;
    grid on;
    legend([curve, pts], {'Curve', 'Newton Points'}, 'Location', 'best');
end
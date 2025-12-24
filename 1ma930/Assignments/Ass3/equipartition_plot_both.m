function equipartition_plot_both(n)
    x_t = @(t) 0.5 + 0.3*t + 3.9*t.^2 - 4.7*t.^3;
    y_t = @(t) 1.5 + 0.3*t + 0.9*t.^2 - 2.7*t.^3;

    t_points_bi = zeros(n+1,1);
    x_points_bi = zeros(n+1,1);
    y_points_bi = zeros(n+1,1);

    t_points_new = zeros(n+1,1);
    x_points_new = zeros(n+1,1);
    y_points_new = zeros(n+1,1);

    for i = 0:n
        s = i / n;
        t_points_bi(i+1) = act_2(s);
        x_points_bi(i+1) = x_t(t_points_bi(i+1));
        y_points_bi(i+1) = y_t(t_points_bi(i+1));
    
        t_points_new(i+1) = act_2_new(s);
        x_points_new(i+1) = x_t(t_points_new(i+1));
        y_points_new(i+1) = y_t(t_points_new(i+1));
    end

    t_line = linspace(0,1,100);
    x = x_t(t_line);
    y = y_t(t_line);
    curve = plot(x, y, 'k-');
    hold on;
    bi_pts = plot(x_points_bi, y_points_bi, 'ro', 'MarkerSize', 8, 'MarkerFaceColor', 'r');
    new_pts = plot(x_points_new, y_points_new, 'bo', 'MarkerSize', 8, 'MarkerFaceColor', 'b');
    hold off;
    title(sprintf('Equipartition with n = %d', n));
    axis equal;
    grid on;
    legend([curve, bi_pts, new_pts], {'Curve', 'Bisection Points', 'Newton Points'}, 'Location', 'best');
end
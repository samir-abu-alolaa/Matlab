function act_7(C)
    x_t = @(t) 0.5 + 0.3*t + 3.9*t.^2 - 4.7*t.^3;
    y_t = @(t) 1.5 + 0.3*t + 0.9*t.^2 - 2.7*t.^3;

    t_line = linspace(0,1,100);
    x = x_t(t_line);
    y = y_t(t_line);
    plot(x, y, 'k-');

    hold on
    mkr = scatter(NaN,NaN,[],"red","filled");
    hold off

    xlim([-0.5 1.5])
    ylim([0 1.6])

    s_vals = linspace(0, 1, 100);
    for i = 1:length(s_vals)
        s = s_vals(i);
        s_c = C(s);
        t_star = act_2_new(s_c);
        mkr.XData = x_t(t_star);
        mkr.YData = y_t(t_star);
        drawnow;
    end
end

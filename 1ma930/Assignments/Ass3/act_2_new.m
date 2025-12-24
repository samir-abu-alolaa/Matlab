function val = act_2_new(s)
    if s <= 0
        val = 0;
        return;
    elseif s >= 1
        val = 1;
        return;
    end

    x_t = @(t) 0.5 + 0.3*t + 3.9*t^2 - 4.7*t^3;
    y_t = @(t) 1.5 + 0.3*t + 0.9*t^2 - 2.7*t^3;

    dirv_x = @(t) 0.3 + 7.8*t - 14.1*t.^2;
    dirv_y = @(t) 0.3 + 1.8*t - 8.1*t.^2;

    fun = @(t) sqrt(dirv_x(t).^2 + dirv_y(t).^2);

    tol = 0.5 * 10^-3;
    result = act_1(1);

    f = @(t) (adapquad(fun, 0, t, tol) / result) - s;
    dirv_f = @(t) fun(t) / result;

    tol = 0.5 * 10^-3;
    max = 100;
    val = newton_method(f, dirv_f, s, tol, max);
end
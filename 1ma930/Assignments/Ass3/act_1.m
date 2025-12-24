function result = act_1(T)
    x_t = @(t) 0.5 + 0.3*t + 3.9*t^2 - 4.7*t^3;
    y_t = @(t) 1.5 + 0.3*t + 0.9*t^2 - 2.7*t^3;

    dirv_x = @(t) 0.3 + 7.8*t - 14.1*t.^2;
    dirv_y = @(t) 0.3 + 1.8*t - 8.1*t.^2;

    fun = @(t) sqrt(dirv_x(t).^2 + dirv_y(t).^2);

    tol = 0.5 * 10^-3;
    result = adapquad(fun, 0, T, tol);
end
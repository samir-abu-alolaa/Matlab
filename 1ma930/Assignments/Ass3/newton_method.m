function result = newton_method(f, df, x0, tol, max_iter)
    for i = 1:max_iter
        x_new = x0 - f(x0) / df(x0);
        if abs(x_new - x0) < tol
            break
        end
        x0 = x_new;
    end
    result = x_new;
end
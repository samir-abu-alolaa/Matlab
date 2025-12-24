fun = @(x) 1 ./ (x .* log(x));
integral(fun, 2, 4)

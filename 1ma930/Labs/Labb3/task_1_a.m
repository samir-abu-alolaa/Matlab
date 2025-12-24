H = hilb(7);
b = 10*ones(7,1);

x = H\b;
xexact=invhilb(7)*b;

forward_error = norm(x - xexact, inf) / norm(xexact, inf);

backward_error = norm(b - H * x, inf) / norm(b, inf);
backword_error_max_abs = max(abs(xexact - x))/ max(abs(x));

mag_fac = forward_error / backward_error

cond_inf = cond(H, 'inf')
format long 

true_val = 1/3;

for p = 1:20
    x = 10^(-p);
    approx_val = f_9(x)
    absolute_error = abs(approx_val - true_val)
    relativ_error = absolute_error / abs(true_val)
    fprintf('p = %2d, approx_val = %.16f, relativ_error = %.3e\n', p, approx_val, relativ_error)
end

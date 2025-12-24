format long 

true_val = 1/3;

for p = 1:20
    x = 10^(-p);
    approx_val = f_7(x)
    relativ_error = abs((approx_val - true_val) / true_val)
end
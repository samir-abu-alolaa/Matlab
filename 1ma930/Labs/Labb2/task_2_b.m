p = [1 0 2 1];
root = roots(p)

for i = 1:length(root)
    alpha = root(i)
    p_alpha = task_2_func(alpha);
    p_prime_alpha = task_2_func_der(alpha);
    H = abs(p_alpha / p_prime_alpha)
end
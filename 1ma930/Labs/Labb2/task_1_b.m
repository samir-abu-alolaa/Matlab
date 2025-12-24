a = 1;
b = 2;

f_a = task_1_func(a);
f_b = task_1_func(b);

for i = 1:3
    if f_a * f_b < 0
        c = (a + b) / 2
        f_c = task_1_func(c);
        if f_a * f_c < 0
            b = c;
            f_b = f_c;
        else
            a = c;
            f_a = f_c;
        end
    end
end
estimated_error = (b - a) / 2

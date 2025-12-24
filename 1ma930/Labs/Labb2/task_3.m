int_x0_1 = 6;
int_x0_2 = 8;

max_point =  0.5 * 10.^-8;

for i = 0:100
    new_x = int_x0_1 - (task_1_func(int_x0_1)/task_2_func_der(int_x0_1));
    if abs(new_x - int_x0_1) < max_point
        break
    end
    int_x0_1 = new_x;   
end
fprintf('Lösning från startvärde 6: %.10f\n', new_x);

for i = 0:100
    new_x = int_x0_2 - (task_1_func(int_x0_2)/task_2_func_der(int_x0_2));
    if abs(new_x - int_x0_2) < max_point
        break
    end
    int_x0_2 = new_x;
end
fprintf('Lösning från startvärde 8: %.10f\n', new_x);


for k = 1:100
    min_val = 19;
    y = fl(k);
    if min_val ~= y
        s = ['k =', num2str(k), ': 19 + 2^(-k) > 19'];
    else
        s = ['k =', num2str(k), ': 19 + 2^(-k) = 19'];
    end
    disp(s)
end
function [SN, absolute_error, relative_error] = sn_decreasing(N, S)
    SN = 0;
    for i=1:N
        func_dec = 1/(i.^3);
        SN = SN + func_dec;
    end
    absolute_error = abs(SN - S);
    relative_error = absolute_error / abs(S);
end

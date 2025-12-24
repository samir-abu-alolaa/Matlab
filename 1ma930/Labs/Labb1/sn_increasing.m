function [SN, absolute_error, relative_error] = sn_increasing(N, S)
    SN = 0;
    for i=N:-1:1
        func_inc = 1/(i.^3);
        SN = SN + func_inc;
    end
    absolute_error = abs(SN - S);
    relative_error = absolute_error / abs(S);
end

function [SN, absolute_error, relative_error] = sum_vector(N, S)
    i = 1:N;
    vector = 1./(i.^3);
    SN = sum(vector);
    absolute_error = abs(SN - S);
    relative_error = absolute_error / abs(S);
end

format long

S = zeta(3);
N = 10.^7;

%a
[SN_dec, absolute_error_dec, relative_error_dec] = sn_decreasing(N, S);

%b
[SN_inc, absolute_error_inc, relative_error_inc] = sn_increasing(N, S);

%c
[SN_vec, absolute_error_vec, relative_error_vec] = sn_vector(N, S);


fprintf('Decreasing order:\n  Absolute Error: %.4g\n  Relative Error: %.4g\n', absolute_error_dec, relative_error_dec);
fprintf('Increasing order:\n  Absolute Error: %.4g\n  Relative Error: %.4g\n', absolute_error_inc, relative_error_inc);
fprintf('Vector sum:\n  Absolute Error: %.4g\n  Relative Error: %.4g\n', absolute_error_vec, relative_error_vec);
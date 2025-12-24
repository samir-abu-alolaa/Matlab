A = rand(1e3);
b = rand(1e3, 1);

tic;
x = A \ b;
t1 = toc;

tic;
[L, U, P] = lu(A);
t2 = toc;

tic;
y = L \ (P * b);
x_lu = U \ y;
t3 = toc;

tic;
x_inv = inv(A) * b;
t4 = toc;

backward_error = norm(b - A * x, inf) / norm(b, inf);
backward_error_xlu = norm(b - A * x_lu, inf) / norm(b, inf);
backward_error_inv = norm(b - A * x_inv, inf) / norm(b, inf);

fprintf('t1 (A\\b): %.6f s\n', t1);
fprintf('t2 (LU factorization): %.6f s\n', t2);
fprintf('t3 (LU solve): %.6f s\n', t3);
fprintf('t4 (inv(A)*b): %.6f s\n', t4);
fprintf('Backward error (A\\b): %.2e\n', backward_error);
fprintf('Backward error (LU): %.2e\n', backward_error_xlu);
fprintf('Backward error (inv): %.2e\n', backward_error_inv);

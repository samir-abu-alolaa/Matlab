n = 200
A = floor(10 * rand(n))
b = sum(A')'
z = ones(n, 1)
x = b * inv(A)
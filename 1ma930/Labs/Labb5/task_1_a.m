f = @(x) sin(2*x) - cos(4*x);
df_exact = 2*cos(2*0) + 4*sin(4*0);

hs = logspace(-1, -12, 12);
errors = zeros(size(hs));

for i = 1:length(hs)
    h = hs(i);
    approx = (f(h) - f(-h)) / (2*h);
    errors(i) = abs(approx - df_exact);
end

loglog(hs, errors, 'b-', 'LineWidth', 2);
xlabel('h');
ylabel('Absolutfel');
title('Fel för trepunktscentrerad differens');

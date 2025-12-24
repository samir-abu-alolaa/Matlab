f = @(x) sin(2*x) - cos(4*x);
df_exact = 2*cos(2*0) + 4*sin(4*0);

hs = logspace(-1, -12, 12);
errors_centerd = zeros(size(hs));
errors_forward = zeros(size(hs));
errors_corresponding = zeros(size(hs));

for i = 1:length(hs)
    h = hs(i);
    approx_centerd = (f(h) - f(-h)) / (2*h);
    approx_forward = (f(h) - f(0)) / (h);
    approx_corresponding = (f(-h) -8*f(-h/2) + 8*f(h/2) - f(h)) / (6*h);

    errors_centerd(i) = abs(approx_centerd - df_exact);
    errors_forward(i) = abs(approx_forward - df_exact);
    errors_corresponding(i) = abs(approx_corresponding - df_exact);
end

loglog(hs, errors_centerd, 'b-', 'LineWidth', 2);
hold on
loglog(hs, errors_forward, 'r-', 'LineWidth', 2);
loglog(hs, errors_corresponding, 'k-', 'LineWidth', 2)
xlabel('h');
ylabel('Absolutfel');
title('Fel för trepunktscentrerad differens');
hold off

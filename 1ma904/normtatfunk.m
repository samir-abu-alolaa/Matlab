function y = normtatfunk(x)
my = 0;
sigma = 1;
y = exp(-(x - my).^2 / (2 * sigma^2)) / (sigma * sqrt(2 * pi));


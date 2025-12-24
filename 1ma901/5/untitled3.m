
%Skapa punkter för den anpassade cirkeln.
space = linspace(0, 2 * pi);
y = radius * sin(space) + c(2);
x = radius * cos(space) + c(1);
scatter(A(:, 1), A(:, 2), 'b.');

%plot
hold on
plot(x, y)

hold off;
xlabel('X-axis');
ylabel('Y-axis');

%y intervallet
ylim([-1, 1]);
yticks(-1:0.2:1);

%x intervallet
xlim([-1, 1]);
xticks(-1:0.5:1);

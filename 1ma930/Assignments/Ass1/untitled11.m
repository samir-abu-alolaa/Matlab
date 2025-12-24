% First sequence of points (vertical stem of the K)
points1 = [5 20; 5 25; 9.51 24.5; 10.22 20.93; 11.48 3.83; 9.18 0.71; 6.56 1.97];

% Second sequence of points (upper branch of the K)
points2 = [20.39 22.02; 19.95 25.63; 25 25; 24.6 21.2; 23.83 14.92; 13.56 12.19; 3.23 11.48; 10.77 11.2; 18.2 8.96; 24.65 2.13];

% Setup the figure
figure;
hold on;
grid on;
axis equal;
xlabel('x');
ylabel('y');
title('Bézier Curves Forming a K');

% Function to draw chained Bézier curves
function drawBezierChain(points, color)
    i = 1;
    while i <= size(points,1) - 3
        % Get four points
        p1 = points(i, :);
        p2 = points(i+1, :);
        p3 = points(i+2, :);
        p4 = points(i+3, :);

        % Calculate coefficients
        bx = 3 * (p2(1) - p1(1));
        cx = 3 * (p3(1) - p2(1)) - bx;
        dx = p4(1) - p1(1) - bx - cx;

        by = 3 * (p2(2) - p1(2));
        cy = 3 * (p3(2) - p2(2)) - by;
        dy = p4(2) - p1(2) - by - cy;

        % Parameter t
        t = linspace(0, 1, 50);

        % Bézier curve points
        xt = p1(1) + bx*t + cx.*t.^2 + dx.*t.^3;
        yt = p1(2) + by*t + cy.*t.^2 + dy.*t.^3;

        % Plot curve
        plot(xt, yt, color, 'LineWidth', 2);

        % Optionally plot control polygon
        plot([p1(1) p2(1) p3(1) p4(1)], [p1(2) p2(2) p3(2) p4(2)], 'ro--', 'MarkerFaceColor', 'r');

        % Next segment
        i = i + 3;
    end
end

% Draw first part
drawBezierChain(points1, 'b-');

% Draw second part
drawBezierChain(points2, 'g-');

legend('Stem', 'Branch', 'Control Polygon');
hold off;
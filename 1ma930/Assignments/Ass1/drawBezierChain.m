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

function bezierdraw_matrix(data)
hold on;
axis equal
t = linspace(0,1,20);

[nrows, ncols] = size(data);

if ncols == 6
    for i = 1:nrows
        x = [data(i,1), data(i,3), data(i,5), data(i,5)];
        y = [data(i,2), data(i,4), data(i,6), data(i,6)];

        plot([x(1) x(2)], [y(1) y(2)], 'r:', x(2), y(2), 'rs');
        plot([x(3) x(4)], [y(3) y(4)], 'r:', x(3), y(3), 'rs');
        plot(x(1), y(1), 'bo', x(4), y(4), 'bo');

        bx = 3*(x(2)-x(1));
        by = 3*(y(2)-y(1));
        cx = 3*(x(3)-x(2)) - bx;
        cy = 3*(y(3)-y(2)) - by;
        dx = x(4)-x(1)-bx-cx;
        dy = y(4)-y(1)-by-cy;

        xp = x(1) + t.*(bx + t.*(cx + t.*dx));
        yp = y(1) + t.*(by + t.*(cy + t.*dy));

        plot(xp,yp,'k-');
    end
elseif ncols == 8
    for i = 1:nrows
        x = [data(i,1), data(i,3), data(i,5), data(i,7)];
        y = [data(i,2), data(i,4), data(i,6), data(i,8)];
        
        plot([x(1) x(2)], [y(1) y(2)], 'r:', x(2), y(2), 'rs');
        plot([x(3) x(4)], [y(3) y(4)], 'r:', x(3), y(3), 'rs');
        plot(x(1), y(1), 'bo', x(4), y(4), 'bo');
        
        bx = 3*(x(2)-x(1));
        by = 3*(y(2)-y(1));
        cx = 3*(x(3)-x(2)) - bx;
        cy = 3*(y(3)-y(2)) - by;
        dx = x(4)-x(1)-bx-cx;
        dy = y(4)-y(1)-by-cy;

        xp = x(1) + t.*(bx + t.*(cx + t.*dx));
        yp = y(1) + t.*(by + t.*(cy + t.*dy));

        plot(xp,yp,'k-');
    end
else
    error('Input matrix must have 6 or 8 columns.');
end

hold off
end

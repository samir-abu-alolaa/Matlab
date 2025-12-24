% Program 3.2. Polynomial Interpolation Program
% Click in MATLAB figure window to locate data point.
% Continue, to add more points.
% Press return to terminate program.

function clickinterp
    xl = -3; xr = 3; yb = -3; yt = 3;
    plot([xl xr], [0 0], 'k', [0 0], [yb yt], 'k');
    grid on;

    xlist = [];
    ylist = [];
    k = 0; % initialize counter k

    while true
        [xnew, ynew] = ginput(1); % get mouse click

        if isempty(xnew) % if return pressed, terminate
            break;
        end

        k = k + 1; % k counts clicks
        xlist(k) = xnew;
        ylist(k) = ynew;

        c = newtdd(xlist, ylist, k); % get interpolation coeffs
        x = xl:0.01:xr; % define x coordinates of curve
        y = nest(k-1, c, x, xlist); % get y coordinates of curve

        plot(xlist, ylist, 'o', x, y, [xl xr], [0 0], 'k', [0 0], [yb yt], 'k');
        axis([xl xr yb yt]);
        grid on;
    end
end

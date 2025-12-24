% Program 3.5 Calculation of spline coefficients
% Calculates coefficients of cubic spline
% Input: x, y vectors of data points
% Output: matrix of coefficients b1, c1, d1; b2, c2, d2; ...

function coeff = splinecoeff(x, y)
    n = length(x);
    v1 = 0; vn = 0; % (ej använda i denna version)
    
    A = zeros(n, n); % Matrix A is nxn
    r = zeros(n, 1);
    
    % Define deltas
    dx = zeros(n-1, 1);
    dy = zeros(n-1, 1);
    for i = 1:n-1
        dx(i) = x(i+1) - x(i);
        dy(i) = y(i+1) - y(i);
    end
    
    % Load the A matrix
    for i = 2:n-1
        A(i, i-1:i+1) = [dx(i-1), 2*(dx(i-1)+dx(i)), dx(i)];
        r(i) = 3*(dy(i)/dx(i) - dy(i-1)/dx(i-1)); % Right-hand side
    end
    
    % Set endpoint conditions
    % Use only one of the following 5 pairs:
    A(1,1) = 1; % Natural spline conditions
    A(n,n) = 1;
    
    % A(1,1)=2; r(1)=v1; % Curvature-adjusted conditions
    % A(n,n)=2; r(n)=vn;
    
    % A(1,1:2)=[2*dx(1) dx(1)]; r(1)=3*(dy(1)/dx(1)-v1); % Clamped
    % A(n,n-1:n)=[dx(n-1) 2*dx(n-1)]; r(n)=3*(vn-dy(n-1)/dx(n-1));
    
    % A(1,1:2)=[1 -1]; % Parabolic-term conditions (for n>=3)
    % A(n,n-1:n)=[1 -1];
    
    % A(1,1:3)=[dx(2) -(dx(1)+dx(2)) dx(1)]; % Not-a-knot (for n>=4)
    % A(n,n-2:n)=[dx(n-1) -(dx(n-2)+dx(n-1)) dx(n-2)];
    
    % Solve system
    coeff = zeros(n, 3);
    coeff(:,2) = A \ r; % Solve for c coefficients
    
    % Solve for b and d
    for i = 1:n-1
        coeff(i,3) = (coeff(i+1,2) - coeff(i,2)) / (3*dx(i));
        coeff(i,1) = dy(i)/dx(i) - dx(i)*(2*coeff(i,2) + coeff(i+1,2))/3;
    end
    
    % Keep only relevant coefficients
    coeff = coeff(1:n-1, 1:3);
end

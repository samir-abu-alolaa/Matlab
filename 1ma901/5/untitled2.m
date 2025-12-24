%beräkna radien för varje punkt
radius_dif = sqrt((A(:,1) - c(1)).^2 + (A(:,2) - c(2)).^2);

%beräkna MSE
MSE = mean((radius_dif - r).^2);


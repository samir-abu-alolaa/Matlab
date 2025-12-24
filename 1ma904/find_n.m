a = -2;                       % Left limit of integration
b = 2;                        % Right limit of integration
tol = 0.01;        

n = ceil(abs(b-a)*(exp(b)-exp(a))/tol);
dx = (b - a) / n;

f_low = a:dx:b-dx;
L_FP = dx*sum(exp(f_low));

f_upp = a + dx:dx:b;
U_FP = dx*sum(exp(f_upp));

disp(' ');
disp(['L(f_low,P)=' num2str(L_FP)]);
disp(['U(f,P)=' num2str(U_FP)]);
disp(['n = ' num2str(n)]);
disp(' ');

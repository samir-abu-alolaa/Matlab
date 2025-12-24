function F_approx = calculate_F(x)

nedre = 0;
ovre = x;
tol = 0.0001;

F_approx = 2 * riemann(@normtatfunk, nedre, ovre, tol);
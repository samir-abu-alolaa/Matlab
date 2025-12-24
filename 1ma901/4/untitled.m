B = load("batman.mat");
bat_matrix = B.B;

%plot för a
plot_a = a * bat_matrix;
plot(plot_a(1,:),plot_a(2,:), 'k.','MarkerSize',1)
axis equal
title("spegling i 𝑥-axeln")

%plot för b
plot_b = b * bat_matrix;
plot(plot_b(1,:), plot_b(2,:), "k.", "MarkerSize",1)
axis equal
title("moturs rotation med 𝜃 = 120")

%plot för c
plot_c = c * bat_matrix;
plot(plot_c(1,:), plot_c(2,:), "k.", "MarkerSize",1)
axis equal
title("faktor 2 i 𝑥-riktningen")

%plot för d
plot_d = d * bat_matrix;
plot(plot_d(1,:), plot_d(2,:), "k.", "MarkerSize",1)
axis equal
title("rotation med 𝜃 = 60 och sedan spegling i 𝑦-axeln")



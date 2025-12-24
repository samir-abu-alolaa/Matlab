%rotation med 𝜃 = 60 och sedan spegling i 𝑦-axeln
vinkel_60 = 60 * pi / 180;
A1 = [cos(vinkel_60) -sin(vinkel_60); sin(vinkel_60) cos(vinkel_60)];
A2 = [-1 0; 0 1];
d = A2 * A1;
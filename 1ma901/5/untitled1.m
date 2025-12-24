%skapa en kolon som innehåller n antal ettor
a = ones(n, 1);

matris = [2*A, a];

b = (A(:,1).^2 + A(:,2).^2);
c = matris\b;
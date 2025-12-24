C = ones(5)
c = [0; ones(4,1)]
C5 = diag(c) + C

C1 = ones(10)
c1 = [0; ones(9,1)]
C10 = diag(c1) + C1

C2 = ones(15)
c2 = [0; ones(14,1)]
C15 = diag(c2) + C2

C5_invers = inv(C5)

C10_invers = inv(C10)

C15_invers = inv(C15)
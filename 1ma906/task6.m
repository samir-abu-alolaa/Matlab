A = [1 2 3;0 -1 1; 1 0 1];
B = [0 0 1;2 1 0;1 -3 -1];
a=[1;0;4];
b=[-1;2;1];
A*B;
A*a;
%B*b' it does not work beacuse after transpose we have 3x3 * 1x3 and it
%does not work
%a*A same here 3x1 * 3x3 and one column times with three row
b'*b;
a'*b;
a*b';
a.*b;
A.*B;

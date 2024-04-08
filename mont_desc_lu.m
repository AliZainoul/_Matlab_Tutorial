function [x] = mont_desc_lu (L,A,b)
[n,n] = size (A);
y(1) = b(1);
for i = 2 : n
    S1 = 0;
    for j = 1 : i-1
        S1 = S1 + L(i,j) * y(j);
    end
    y(i) = b(i) - S1;
end
x(n) = y(n) / A(n,n);
for i = n-1 : (-1) : 1
    S2 = 0;
    for j = i+1 : n
        S2 = S2 + A(i,j) * x(j);
    end
    x(i) = ( y(i) - S2 ) / A(i,i);
end
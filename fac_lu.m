function [L,A] = fac_lu(A)
[n,n] = size (A);
L = eye (n);
U = eye (n);
for k = 1 : n-1
    for i = k+1 : n
        L(i,k) = A(i,k) / A(k,k);
    end
    for j = k+1  : n
        for i = k+1 : n
            A(i,j) = A(i,j) - ( A(i,k) / A(k,k) ) * A(k,j);
        end
    end
end
for i = 1 : n
    for j = 1 : n
        U(i,j) = A(i,j);
    end
end
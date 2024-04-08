% Define the linear system
A = [8, -4, 3, 7; 4, 2, -6, 4; -16, 6, -2, -15; 6, 10, -15, 10]
b = [12; 1; -19; 1]

% Perform LU factorization
[L, U] = fac_lu(A);

% Solve the linear system using forward and backward substitution
x = mont_desc_lu(L, U, b);

% Display the result
disp('Solution of the linear system Ax = b:');
disp(x);
%{
testLU

A =

     8    -4     3     7
     4     2    -6     4
   -16     6    -2   -15
     6    10   -15    10


b =

    12
     1
   -19
     1

Solution of the linear system Ax = b:
    4.5714    3.3571    2.2857   -2.5714
}%
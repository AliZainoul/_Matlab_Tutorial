% Ask the user to enter the size of matrix A
n = input('Enter the size of matrix A: ');

% Ask the user to enter matrix A
disp('Enter matrix A:');
A = input('');

% Ask the user to enter solution vector b
disp('Enter solution vector b:');
b = input('');

% Check if the size of A and b is compatible
if size(A, 1) ~= size(A, 2) || size(A, 1) ~= length(b)
    error('The size of matrix A and/or vector b is incorrect.');
end

% Perform LU decomposition of matrix A
[L, U, P] = lu(A);

% Solve the linear system Ax = b
x = U \ (L \ (P * b));

% Display the solution x
disp('The solution of the linear system Ax = b is:');
disp(x);

%{
>> LU
Enter the size of matrix A:
4
Enter matrix A:
[8, -4, 3, 7; 4, 2, -6, 4; -16, 6, -2, -15; 6, 10, -15, 10]
Enter solution vector b:
[12; 1; -19; 1]
The solution of the linear system Ax = b is:
    4.5714
    3.3571
    2.2857
   -2.5714
%}

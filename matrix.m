% Creation of two matrices
% Define two matrices with specified elements
matrix1 = [100, 2, 3; 4, 5, 6; 7, 8, 9];
matrix2 = [9, 6, 7; 2, 3, 4; 1, 2, 1];

% Display the matrices
% Display the contents of matrix1 and matrix2
disp('Matrix 1:');
disp(matrix1);
disp('Matrix 2:');
disp(matrix2);

% Matrix addition
% Perform element-wise addition of matrix1 and matrix2
addition_result = matrix1 + matrix2;
disp('Addition of matrices:');
disp(addition_result);

% Matrix subtraction
% Perform element-wise subtraction of matrix2 from matrix1
subtraction_result = matrix1 - matrix2;
disp('Subtraction of matrices:');
disp(subtraction_result);

% Element-wise multiplication
% Perform element-wise multiplication of matrix1 and matrix2
elementwise_multiplication_result = matrix1 .* matrix2;
disp('Element-wise multiplication of matrices:');
disp(elementwise_multiplication_result);

% Element-wise division
% Perform element-wise division of matrix2 by matrix1
elementwise_division_result = matrix2 ./ matrix1;
disp('Element-wise division of matrices:');
disp(elementwise_division_result);

% Matrix multiplication
% Perform matrix multiplication of matrix1 and matrix2
matrix_multiplication_result = matrix1 * matrix2;
disp('Matrix multiplication result:');
disp(matrix_multiplication_result);

% Matrix transpose
% Calculate the transpose of matrix1
transpose_result = matrix1';
disp('Transpose of matrix 1:');
disp(transpose_result);

% Determinant of a matrix
% Calculate the determinant of matrix1
determinant_result = det(matrix1);
disp('Determinant of matrix 1:');
disp(determinant_result);

% Inverse of a matrix
% Calculate the inverse of matrix1
inverse_result = inv(matrix1);
disp('Inverse of matrix 1:');
disp(inverse_result);

% Creating matrices using colon operator
% Create a sequential matrix using the colon operator
sequential_matrix = [1:3; 4:6; 7:9];
disp('Sequential Matrix:');
disp(sequential_matrix);

Retrieving vectors using : colon operator
% First row
first_row = matrix1(1, :);

% Second row
second_row = matrix1(2, :);

% Third row
third_row = matrix1(3, :);

% First column
first_column = matrix1(:, 1);

% Second column
second_column = matrix1(:, 2);

% Third column
third_column = matrix1(:, 3);

% Creation of two matrices
% Define two matrices with specified elements
% size of matrix_1 (3x3)
matrix_1 = [
    100, 2, 3; 
    4, 5, 6; 
    7, 8, 9
];

% size of matrix_1 (3x3)
matrix_2 = [
    9, 6, 7;
    2, 3, 4; 
    1, 2, 1
];

matrix_3 = [
    9, 6, 7, 3;
    2, 3, 4, 2; 
    1, 2, 1, 8;
];

% size of vec (4,1) (column vector)
vec = [3; 2; 8; 9];

% Display the matrices
% Display the contents of matrix_1 and matrix_2
disp('Matrix 1:');
disp(matrix_1);
disp('Matrix 2:');
disp(matrix_2);
disp('Matrix 3:');
disp(matrix_3);


% Product of matrix and vector :
disp('Product of matrix and vector :')
% res_vec will have size (3x4) * (4,1) = (3x1)
res_vec_col = matrix_3 * vec; % (3x1)
disp(res_vec_col);

% Matrix addition
% Perform element-wise addition of matrix_1 and matrix_2
addition_result = matrix_1 + matrix_2;
disp('Addition of matrices:');
disp(addition_result);

% Matrix subtraction
% Perform element-wise subtraction of matrix_2 from matrix_1
subtraction_result = matrix_1 - matrix_2;
disp('Subtraction of matrices:');
disp(subtraction_result);

% Element-wise multiplication
% Perform element-wise multiplication of matrix_1 and matrix_2
elementwise_multiplication_result = matrix_1 .* matrix_2;
disp('Element-wise multiplication of matrices:');
disp(elementwise_multiplication_result);

% Element-wise division
% Perform element-wise division of matrix_2 by matrix_1
elementwise_division_result = matrix_2 ./ matrix_1;
disp('Element-wise division of matrices:');
disp(elementwise_division_result);

% Matrix multiplication
% Perform matrix multiplication of matrix_1 and matrix_2
% matrix_1 (3x3) * matrix_2 (3x3) = (3x3)
matrix_multiplication_result = matrix_1 * matrix_2;
disp('Matrix multiplication result:');
disp(matrix_multiplication_result);

% Matrix transpose
% Calculate the transpose of matrix_1
transpose_result = matrix_1';
disp('Transpose of matrix 1:');
disp(transpose_result);

% Determinant of a matrix
% Calculate the determinant of matrix_1
determinant_result = det(matrix_1);
disp('Determinant of matrix 1:');
disp(determinant_result);

% Inverse of a matrix
% Calculate the inverse of matrix_1
inverse_result = inv(matrix_1);
disp('Inverse of matrix 1:');
disp(inverse_result);

% Creating matrices using colon operator
% Create a sequential matrix using the colon operator
sequential_matrix = [1:3; 4:6; 7:9];
disp('Sequential Matrix:');
disp(sequential_matrix);

% Retrieving vectors using : colon operator
% First row
first_row = matrix_1(1, :);
disp('first_row = ');
disp(first_row);

% Second row
second_row = matrix_1(2, :);
disp('second_row = ');
disp(second_row);

% Third row
third_row = matrix_1(3, :);
disp('third_row = ');
disp(third_row);

% First column
first_column = matrix_1(:, 1);
disp('first_column = ');
disp(first_column);

% Second column
second_column = matrix_1(:, 2);
disp('second_column = ');
disp(second_column);

% Third column
third_column = matrix_1(:, 3);
disp('third_column = ');
disp(third_column);

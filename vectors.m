% Creation of two vectors
% Define two vectors with specified elements
vector1 = [1, 2, 3, 4, 5];
vector2 = [6, 7, 8, 9, 10];

% Display the vectors
% Display the contents of vector1 and vector2
disp('Vector 1:');
disp(vector1);
disp('Vector 2:');
disp(vector2);

% Vector addition
% Perform element-wise addition of vector1 and vector2
addition_result = vector1 + vector2;
disp('Addition of vectors:');
disp(addition_result);

% Vector subtraction
% Perform element-wise subtraction of vector2 from vector1
subtraction_result = vector2 - vector1;
disp('Subtraction of vectors:');
disp(subtraction_result);

% Element-wise multiplication
% Perform element-wise multiplication of vector1 and vector2
elementwise_multiplication_result = vector1 .* vector2;
disp('Element-wise multiplication of vectors:');
disp(elementwise_multiplication_result);

% Element-wise division
% Perform element-wise division of vector2 by vector1
elementwise_division_result = vector2 ./ vector1;
disp('Element-wise division of vectors:');
disp(elementwise_division_result);

% Dot product
% Calculate the dot product of vector1 and vector2
dot_product_result = dot(vector1, vector2);
disp('Dot product of vectors:');
disp(dot_product_result);

% Cross product (for vectors of size 3)
% Check if both vectors are of size 3 and calculate the cross product if true
if length(vector1) == 3 && length(vector2) == 3
    cross_product_result = cross(vector1, vector2);
    disp('Cross product of vectors:');
    disp(cross_product_result);
else
    disp('Cross product is only defined for vectors of size 3.');
end

% Creating vectors using colon operator
% Create sequential vectors using the colon operator
sequential_vector1 = 1:5;
sequential_vector2 = 6:10;

% Display sequential vectors
% Display the contents of sequential_vector1 and sequential_vector2
disp('Sequential Vector 1:');
disp(sequential_vector1);
disp('Sequential Vector 2:');
disp(sequential_vector2);

% Creating vectors with step
% Create a vector with specified step using the colon operator
vector_with_step = 1:2:10;
disp('Vector with step (1:2:10):');
disp(vector_with_step);

% Appending an element to a vector using the colon operator
% Append an element to a vector using the colon operator
vector_with_append = [1:3, 10];
disp('Vector with append ([1:3, 10]):');
disp(vector_with_append);

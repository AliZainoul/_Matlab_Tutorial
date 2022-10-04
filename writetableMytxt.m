% Declaring a cell array named "Students"
Students = {'O''sullivan';'James';'Eloise';'Dina';'Yves'};

% Declaring a column vector named "Age" (5x1) of type double
Age = [19;22;18;21;20];

% Declaring a column vector named "ID" (5x1) of type double
ID = [53525;53345;65232;27535;67394];

% Declaring a column vector named "mainCourse" (5x1) of type string
mainCourse = ["Linear Algebra";     ...
              "C++ programming";    ...
              "Data Analysis";      ...
              "Data scrapping";     ...
              "Matlab Programming"];

% Creating a table
% Please refer to the documentation: 
% https://fr.mathworks.com/help/matlab/matlab_prog/create-a-table.html
T = table(ID,Age,mainCourse, ...
    'RowNames',Students)

% Writing contents of the table into a txt file named myStudentsExample
writetable(T,'myStudentsExample.txt','WriteRowNames',true)
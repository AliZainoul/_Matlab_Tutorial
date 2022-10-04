% For CSV files, we will use the same example as before, for the sake of
% clarity, I've separated the two files, remember to DRY normally !

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
T = table(Students, ID, Age, mainCourse)

% Writing contents of the table into a csv file named myStudentsExample
% Please refer to the documentation:
% https://fr.mathworks.com/help/matlab/ref/writetable.html
writetable(T,'myStudents.csv','Delimiter',',','QuoteStrings',true)
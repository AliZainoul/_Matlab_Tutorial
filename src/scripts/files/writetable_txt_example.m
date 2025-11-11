%====================================================================
% Script: writetable_txt_example.m
%
% Description:
%   This script demonstrates how to create a MATLAB table from 
%   different data types (cell arrays, numeric vectors, and string 
%   arrays) and export it to a TXT file using the `writetable` 
%   function.
%
%   The table contains student information such as name, ID, age, 
%   and course. The resulting TXT file can be used for data exchange 
%   with other applications (e.g., Excel, Python, R).
%
%--------------------------------------------------------------------
% Inputs:
%   None (data is hardcoded in the script)
%
% Outputs:
%   A TXT file named:
%       data/txt_students_writetable.txt
%
% Example:
%   >> writetable_txt_example
%   Creates a table of 5 students and saves it as a TXT file.
%
% References:
%   MATLAB documentation:
%       https://fr.mathworks.com/help/matlab/matlab_prog/create-a-table.html
%       https://fr.mathworks.com/help/matlab/ref/writetable.html
%
%====================================================================

%% CONSTANTS
PATH = 'data/txt_students_writetable.txt'; % Path to your TXT file

% Column format for reading
fmt = '%s%f%f%s';

%% Step 1: Define variables
% Declaring a cell array named "student"
student = {'Ali'; 'James'; 'Eloise'; 'Dina'; 'Yves'};

% Declaring a column vector named "age" (5x1) of type double
age = [19; 22; 18; 21; 20];

% Declaring a column vector named "id" (5x1) of type double
id = [53525; 53345; 65232; 27535; 67394];

% Declaring a column vector named "course" (5x1) of type string
course = {'Linear Algebra'; ...
          'C++ programming'; ...
          'Data Analysis'; ...
          'Data scrapping'; ...
          'Matlab Programming'};

%% Step 2: Create a table from the defined variables
T = table(student, id, age, course);

%% Step 3: Write the table to a TXT file
% Use 'Delimiter', ',' to maintain comma-separated format
writetable(T, PATH, 'Delimiter', ',');

%% Step 4: Detect MATLAB version and choose compatible readtable syntax
if verLessThan('matlab', '9.10')  % 9.10 = R2021a
    fprintf('####### MATLAB version < R2021a detected ####### \n')
    fprintf('-> using legacy readtable syntax.\n\n');
    
    students_table = readtable(PATH, 'Format', fmt, 'Delimiter', ',');
else
    fprintf('####### MATLAB version ? R2021a detected ####### \n')
    fprintf('-> using modern readtable syntax.\n\n');
    students_table = readtable(PATH, 'Format', fmt, ...
        'Delimiter', ',', 'VariableNamingRule', 'preserve');
end

%% Step 5: Display confirmation message and imported data
fprintf('TXT file successfully written to %s.\n', PATH);
disp('Imported students data:');
disp(students_table);

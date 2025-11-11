%====================================================================
% Script: writetable_csv_example.m
%
% Description:
%   This script demonstrates how to create a MATLAB table from 
%   different data types (cell arrays, numeric vectors, and string 
%   arrays) and export it to a CSV file using the `writetable` 
%   function.
%
%   The table contains student information such as name, ID, age, 
%   and course. The resulting CSV file can be used for data exchange 
%   with other applications (e.g., Excel, Python, R).
%
%--------------------------------------------------------------------
% Inputs:
%   None (data is hardcoded in the script)
%
% Outputs:
%   A CSV file named:
%       data/csv_students_writetable.csv
%
% Example:
%   >> write_students_table
%   Creates a table of 5 students and saves it as a CSV file.
%
% References:
%   MATLAB documentation:
%       https://fr.mathworks.com/help/matlab/matlab_prog/create-a-table.html
%       https://fr.mathworks.com/help/matlab/ref/writetable.html
%
%====================================================================

%% CONSTANTS
PATH = 'data/csv_students_writetable.csv'; % Path to your CSV file

% Column format:
%   student ...................... %s
%   id ........................... %f
%   age .......................... %f
%   course ....................... %s
fmt = '%s%f%f%s';

%% Step 1: Define variables
% Declaring a cell array named "student"
student = ["Ali"; "James"; "Eloise"; "Dina"; "Yves"];

% Declaring a column vector named "age" (5x1) of type double
age = [19; 22; 18; 21; 20];

% Declaring a column vector named "id" (5x1) of type double
id = [53525; 53345; 65232; 27535; 67394];

% Declaring a column vector named "course" (5x1) of type string
course = ["Linear Algebra"; ...
          "C++ programming"; ...
          "Data Analysis"; ...
          "Data scrapping"; ...
          "Matlab Programming"];

%% Step 2: Create a table from the defined variables
T = table(student, id, age, course);

%% Step 3: Write the table to a CSV file
writetable(T, PATH, 'Delimiter', ',');

%% Detect MATLAB version and choose compatible readtable syntax
if verLessThan('matlab', '9.10')  % 9.10 = R2021a
    % ===== Legacy syntax (R2019?R2020) =====
    fprintf('####### MATLAB version < R2021a detected ####### \n')
    fprintf('-> using legacy readtable syntax.\n\n');
    
    students_table = readtable(PATH,'Format', fmt);
else
    % ===== Modern syntax (R2021a or newer) =====
    fprintf('####### MATLAB version ? R2021a detected ####### \n')
    fprintf('-> using modern readtable syntax.\n\n');
    students_table = readtable(PATH, 'Format', fmt, ...
        'VariableNamingRule', 'preserve');
end

%% Display confirmation message
fprintf('CSV file successfully written to %s. \n' ,PATH);
disp('Imported students data:')
fprintf('\n')
disp(students_table)
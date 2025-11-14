%====================================================================
% Script: readtable_txt_example.m
% Description:
%   Reads a TXT file containing student information and adapts 
%   automatically to the installed MATLAB version.
%
% TXT Example (comma-separated):
%   student,id,age,course
%   Ali,53525,19,Linear Algebra
%   James,53345,22,C++ programming
%   Eloise,65232,18,Data Analysis
%   Dina,27535,21,Data scrapping
%   Yves,67394,20,Matlab Programming
%
%====================================================================

%% Constants
PATH = 'data/txt_students.txt';  % Path to your TXT file

% Column format:
%   student ...................... %s
%   id ........................... %f
%   age .......................... %f
%   course ....................... %s
fmt = '%s%f%f%s';

%% Detect MATLAB version and choose compatible readtable syntax
if verLessThan('matlab', '9.10')  % 9.10 = R2021a
    % ===== Legacy syntax (R2019?R2020) =====
    fprintf('####### MATLAB version < R2021a detected ####### \n')
    fprintf('-> using legacy readtable syntax.\n\n');
    
    students_table = readtable(PATH, 'Delimiter', ',', 'Format', fmt);
else
    % ===== Modern syntax (R2021a or newer) =====
    fprintf('####### MATLAB version ? R2021a detected ####### \n')
    fprintf('-> using modern readtable syntax.\n\n');
    students_table = readtable(PATH, 'Delimiter', ',', 'Format', fmt, ...
        'VariableNamingRule', 'preserve');
end

%% Display the imported data
disp('Imported students data:')
fprintf('\n')
disp(students_table)

%% Examples: Accessing columns, rows, and specific entries
fprintf('\n--- Examples: Accessing data ---\n');

% Print a single column (Age)
fprintf('\nAges of all students:\n');
age_students = students_table.age;
disp(age_students);

% Print a single row (2nd student)
fprintf('\nSecond student row:\n');
second_student = students_table(2,:);
disp(second_student)  % Row 2, all columns

% Print a single cell (3rd student, course)
fprintf('\nThird student main course:\n');
if iscell(students_table.course)
    disp(students_table.course{3})
else
    disp(students_table.course(3))
end

% Print all student names line by line
fprintf('\nAll student names: \n');
if iscell(students_table.student)
    for i = 1:height(students_table)
        fprintf('%s\n', students_table.student{i});
    end
else
    for i = 1:height(students_table)
        fprintf('%s\n', students_table.student(i));
    end
end
students = students_table.student;
disp(students);

% Print all data in one line for the first student
fprintf('\nFirst student on one line:\n');
if iscell(students_table.student)
    fprintf('%s | %d | %d | %s \n', ...
        students_table.student{1}, ...
        students_table.id(1), ...
        students_table.age(1), ...
        students_table.course{1});
else
    fprintf('%s | %d | %d | %s \n', ...
        students_table.student(1), ...
        students_table.id(1), ...
        students_table.age(1), ...
        students_table.course(1));
end

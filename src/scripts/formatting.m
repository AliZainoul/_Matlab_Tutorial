% This script demonstrates the use of DISP, FPRINTF, and SPRINTF in MATLAB.
% It also illustrates single-line and multi-line comments and custom formatting.

%{
    This is a multiline comment
    Comments can span multiple lines when enclosed between
    %{ and %}
%}

%% Compact display format
format compact

%% Define variables for demonstration
an_array_of_chars = 'Hello World! (an array of characters)';
a_string = "Hello World again! (a string)";
another_string = "End String (a string)";
name = "Ali";
age = 30;
b_string = "This is variable b";
d_string = " and this is d";
e_string = b_string + newline + d_string; % string concatenation example
f_char_array = 'A char array example';

%% DISP EXAMPLES

print_line('#', 50, 'DISP EXAMPLES')


% DISP examples from MATLAB documentation

% Display a numeric value
disp(123.456)

% Display a character vector
disp('Hello, world!')

% Display a string array
disp("Hello again!")

% Display an array
line_vector = [12.7 5.02 -98 63.9 0 -.2 56];
disp(line_vector)

% Display a cell array
cell_example = {'text', [4 5 6], 3+2i};
disp(cell_example)

% Display a structure
struct_example.name = 'John Doe';
struct_example.age = 32;
struct_example.score = [95 88 76];
disp(struct_example)

% Display variables defined earlier
disp(an_array_of_chars)
disp(a_string)
disp(e_string)
disp(f_char_array)

print_line('#', 50, 'END DISP EXAMPLES')

%% FPRINTF EXAMPLES
print_line('#', 50, 'FPRINTF EXAMPLES')

% FPRINTF examples from MATLAB documentation

% Display formatted text in Command Window
fprintf("Hello, world!\n")

% Display multiple lines
fprintf("Line 1\nLine 2\nLine 3\n")

% Display string and numeric values
fprintf("My name is %s, and I am %d years old.\n", name, age)

% Formatting numeric values
fprintf("Pi to 4 decimal places: %.4f\n", pi)
fprintf("Scientific notation: %e\n", 148.8)

% Formatting multiple values in a matrix
magic_matrix = magic(3);
fprintf('3x3 Magic square (formatted):\n')
fprintf('%1.2f %1.2f %1.2f\n', magic_matrix)

% Write to a file
PATH = 'data/example_output.txt';
file_id = fopen(PATH, 'w');
fprintf(file_id, 'This is written to a file: %s\n', datestr(now));
fclose(file_id);

print_line('#', 50, 'END FPRINTF EXAMPLES')

%% SPRINTF EXAMPLES

print_line('#', 50, 'SPRINTF EXAMPLES')


% SPRINTF examples from MATLAB documentation

% Create a formatted string
str_pi = sprintf('Pi is approximately %.2f', pi);
disp(str_pi)

% Combine strings and numbers
str_combined = sprintf('The value of %s is %5.2f', 'pi', pi);
disp(str_combined)

% Create a multi-line string
str_multiline = sprintf('Line 1\nLine 2\nLine 3\n');
disp(str_multiline)

% Create formatted string from array data
numeric_array = [1.2345, 6.789, 10.1112];
char_values = sprintf('Values: %.2f, %.2f, %.2f \n', numeric_array);
disp(char_values)

% Using string array inputs with SPRINTF
animal_names = ["cat", "dog", "fish"];
animal_counts = [4, 1, 2];

% Initialize an empty string to accumulate the result
str_animals = ""; % or call to constructor str_animals = string()

% Loop through each animal and format a line of text
for i = 1:length(animal_names) % or numel()
    % SPRINTF formats and returns a string (does not print to screen)
    if animal_counts(i) > 1
        str_animals = str_animals + sprintf('There are %d %ss.\n', ...
                                        animal_counts(i), animal_names(i));
    
    else
        str_animals = str_animals + sprintf('There is %d %s.\n', ...
                                        animal_counts(i), animal_names(i));
    end
    % TODO: simplify and DRY this example
end

% Display the concatenated result
disp(str_animals)

% Store and reuse
message = sprintf("My name is %s and I am %d years old.", name, age);
disp(message)


print_line('#', 50, 'END SPRINTF EXAMPLES')



%% ----------- FUNCTION DEFINITION -----------
function print_line(token, n, msg)
%PRINT_LINE Display a horizontal line of repeated characters or strings, optionally with a centered message.
%   PRINT_LINE(TOKEN, N) displays a horizontal line consisting of TOKEN 
%   repeated N times, followed by a newline.
%
%   PRINT_LINE(TOKEN, N, MSG) displays the same line, but inserts MSG in the
%   center of the line, padded equally on both sides with TOKEN.
%
%   INPUT ARGUMENTS:
%       TOKEN - (char or string) The character or string to be repeated.
%       N     - (positive integer) Number of repetitions per side if MSG is
%               given, or total repetitions if MSG is omitted.
%       MSG   - (optional) Message to display in the middle of the line.
%
%   EXAMPLES:
%       print_line('-', 20)
%       print_line('*', 10, 'Done')
%       print_line('=', 15, 'Results')
%
%   OUTPUT EXAMPLE:
%       *****HELLO*****
%
%   SEE ALSO: REPMAT, FPRINTF

    if nargin < 2
        error('Usage: print_line(token, n [, msg])')
    end
    if ~ischar(token) && ~isstring(token)
        error('TOKEN must be a character or string.')
    end
    if ~isscalar(n) || n < 1 || ~isnumeric(n)
        warning('N must be a positive integer. Printing empty line.')
        
        return;
    end
    if nargin < 3
        msg = '';
    end

    msg = string(strtrim(msg));

    if strlength(msg) == 0
        line = repmat(token, 1, n);
    else
        left_side  = repmat(token, 1, floor(n/2));
        right_side = repmat(token, 1, ceil(n/2));
        line = left_side + msg + right_side;
    end

    fprintf('%s\n\n', line);
end

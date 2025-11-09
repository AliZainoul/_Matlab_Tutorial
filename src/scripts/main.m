%% =========================================================================
% All-in-one MATLAB tutorial using snake_case and docstrings
% =========================================================================

%% Section 1: Welcome and comments
%{
    This section demonstrates how to write single-line and multi-line comments in MATLAB.
    Single-line comments start with %
    Multi-line comments are enclosed with %{ and %}
%}

format compact  % Compact output format

%% Section 2: Basic input/output examples

%{
    Demonstrating disp, fprintf, sprintf
    and input usage in MATLAB
%}

% Prompt user for a string input
user_name = input('What''s your name? ', 's');
if ~isempty(user_name)
    fprintf('Hello %s \n', user_name);
end

% Prompt user for a numeric input
user_number = input('Please enter a number: ');
disp(user_number);

% Prompt for a string input
user_string = input('Please enter a string: ', 's');
disp(user_string);

% Prompt for a vector input
user_vector = input('Please enter a vector: ');
disp('Row vector:')
disp(user_vector)
disp('Column vector:')
disp(user_vector')

%% Section 3: Variables types

% Integer types
my_integer = int8(3);

% Character type
my_char = 'A';
disp(class(my_char))

% String type
my_string = "Hello MATLAB";
disp(class(my_string))

% Boolean types
my_boolean = true;
my_false_boolean = ~(~false);

%% Section 4: Utility functions

% Minimum and maximum of integer types
disp(intmin('int8'))
disp(intmax('int8'))

disp(intmin('int16'))
disp(intmax('int16'))

disp(intmin('int32'))
disp(intmax('int32'))

disp(intmin('int64'))
disp(intmax('int64'))

% Minimum and maximum of floating-point numbers
disp(realmin('double'))
disp(realmax('double'))

disp(realmin('single'))
disp(realmax('single'))

% Class of numeric literals
my_variable_integer = 8;
disp(class(my_variable_integer))

my_variable_double = 8.2;
disp(class(my_variable_double))

my_variable_double_negative = -8.2;
disp(class(my_variable_double_negative))

%% Section 5: Casting variables
my_char_c = 'A';
my_char_to_double = double(my_char_c);
fprintf('\nASCII code of A: %d\n', my_char_to_double);

%% Section 6: ASCII table examples

% Uppercase letters
upper_alphabet = 'A':'Z';
disp("Uppercase ASCII codes:")
for i = 1:length(upper_alphabet)
    fprintf('%c = %d  ', upper_alphabet(i), double(upper_alphabet(i)));
    if mod(i, 8) == 0
        fprintf('\n')
    end
end
fprintf('\n')

% Lowercase letters
lower_alphabet_codes = 97 + (0:25);
disp("Lowercase ASCII codes:")
for i = 1:length(lower_alphabet_codes)
    fprintf('%c = %d  ', char(lower_alphabet_codes(i)), lower_alphabet_codes(i));
    if mod(i, 6) == 0
        fprintf('\n')
    end
end
fprintf('\n')

% Special characters ASCII 33-64
disp("Special characters ASCII codes:")
for index = 33:64
    fprintf('%d = %c  ', index, char(index));
    if mod(index, 8) == 0
        fprintf('\n')
    end
end
fprintf('\n')

%% Section 7: Arithmetic operations examples
sprintf('8 + 3 = %d', 8 + 3)
sprintf('8 - 3 = %d', 8 - 3)
sprintf('8 * 3 = %d', 8 * 3)
sprintf('8 / 3 = %.2f', 8 / 3)
sprintf('8 ^ 3 = %d', 8 ^ 3)
sprintf('8 %% 3 = %d', mod(8, 3))

%% Section 8: Custom functions usage
% Ensure functions my_mean.m and calculate_average.m exist in the directory
array_values = [1 2 3 4];
mean_val_builtin = mean(array_values);
mean_val_custom = my_mean(array_values);
average_val_custom = calculate_average(array_values);

% Testing correctness
test_my_mean = (mean_val_builtin == mean_val_custom);
test_my_average = (mean_val_builtin == average_val_custom);
disp(['Test my_mean correct? ', num2str(test_my_mean)])
disp(['Test calculate_average correct? ', num2str(test_my_average)])

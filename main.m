% Welcome to a all-in-one Matlab tutorial
% This is a comment
% All comments in Matlab starting with a '%' keyword
% Comments are always green as you can see by yourself

%{  
    This is a multiline comment
    All multilines comments are between the two keywords
    %{ and %}
    as you can see, it is still green
%}

% Compact format see : 
% https://www.mathworks.com/help/matlab/matlab_env/format-output.html
format compact 
%{
% Printing literal text into screen
% Documentation of fprintf: 
% https://www.mathworks.com/help/matlab/ref/fprintf.html
fprintf(' Hello world, ')
fprintf(" Hello world again \n ")
% Prints the same result, the literal text has to be between
% signe quotes ' my text ' or double quotes " my text " 



% Creating a variable named " name ", and assigning to it
% an input value of type string i.e: 's'
% input(...) is a keyword! More examples will be shown
% See: https://www.mathworks.com/help/matlab/ref/input.html
name = input(' What''s your name? ', 's');

% Checking if there is an entry, then printing the name 
% otherwise do nothing
if ~isempty(name)
    fprintf('Hello %s \n', name)
end
% A statement of type "if" must have an "end" keyword
% i.e: if condition 
%         do stuff
%      end

disp("Displaying");
myNumber = input(" Please enter a number: ");
% The number input may be: 
%                 an integer (e.g. : 554)
%            or   a   float (e.g. : 0.44)
%        or even  a   negative number (e.g. : -0.53)
disp(myNumber);

% See: https://www.mathworks.com/help/matlab/ref/disp.html
% disp(X) is for displaying (printing) the content X 
% without printing the
% variable name
% input: array



myString = input(" Please enter a string: ", 's');
% Here we must specify the 's' keyword in input(...)
% Otherwise we get an error
disp(myString);

myVector = input(" Please enter a vector: ");
disp(myVector); % displaying line vector
disp(myVector'); % displaying column vector
% See: https://fr.wikipedia.org/wiki/Vecteur
% for definition of a vector.
% All we need here, is to know that a vector 
% is of the form: v = [v1, v2, ... , vn] (line vector)
% and             w = [v1; v2; ... ; vn]' (column vector)
% We say that:    v' = w (the symbol ' refers to Transpose)
% e.g. : v = [1, 2, 3] or w = [1 2 3]
% the two methods are valid in Matlab
% BTW: the keyword ' is for transposing a vector
% See: https://fr.wikipedia.org/wiki/Vecteur_colonne
% and: https://fr.wikipedia.org/wiki/Matrice_transpos%C3%A9e



%}

% Variables:  int8, int16, int32, int64, 
%             char, logical, double, single and unsigned types

myInteger1 = int8(3);
myCharacter1 = 'A'
class(myCharacter1)


myCharacter1_ = "A"
class(myCharacter1_)


myString1 = "A"
class(myString1)

myString1_ = 'Forming a string from a char array.'
myString2_ = "Forming a string from a char array."




% Boolean
myBoolean = true;
myfalseBoolean = ~(~false);


%{
a = 2; b = -3; c = 5.4 ; myBoolean = (a==b); z = 2 + 2i; ...
aChar = 'c'; alongChar = 'Hello k'; aString = "oui"; whos
%}


% Utility methods
intmin('int8')
intmin('int16')
intmin('int32')
intmin('int64')

intmax('int8')
intmax('int16')
intmax('int32')
intmax('int64')

realmin('double')
realmax('double')

realmin('single')
realmax('single')

% ...
% All numbers are considered of class double !
myVariableInteger = 8
class(myVariableInteger)

myVariableDouble = 8.2
class(myVariableDouble)

myVariableDouble1 = -8.2
class(myVariableDouble1)

% but... We may want to cast a variable
% for instance: 

myChar = 'A'
myCharCastedtoDouble = double('A')
fprintf('\n')
% ASCII Code for uppercase alphabet
UpperAlphabet = ['A' 'B' 'C' 'D' 'E' 'F' 'G' 'H' ...
                 'I' 'J' 'K' 'L' 'M' 'N' 'O' 'P' ...
                 'Q' 'R' 'S' 'T' 'U' 'V' 'W' 'X' ...
                 'Y' 'Z'                           ];
disp("Corresponding ascii lower case numbers")
for i = 1:26
    fprintf('%c', UpperAlphabet(i), ' = ') 
    %   OR INSTEAD :
    %disp(UpperAlphabet(i))
    %fprintf("=")
    mydoubleAi = double(UpperAlphabet(i));
    fprintf('%d', mydoubleAi)
    %disp(mydoubleAi)
    fprintf("  ")
    if (mod(i, 8) == 0)
        fprintf('\n')
    end
end 
fprintf('\n')

% ASCII Code for lowercase alphabet
lowerAlphabet = [   01 02 03 04 05 06 07 08 ...
                    09 10 11 12 13 14 15 16 ... 
                    17 18 19 20 21 22 23 24 ...
                    25 26                     ];
lowerAlphabetx96 = 96 + lowerAlphabet;
fprintf('\n')
disp("Corresponding ascii lower case numbers")
for i = 1:length(lowerAlphabetx96)
    fprintf('%c', char(lowerAlphabetx96(i)))
    fprintf(" = ")
    fprintf('%3.d', i+096)
    fprintf("  ")
    if (mod(i, 6) == 0)
        fprintf('\n')
    end
end 
fprintf('\n')
fprintf('\n')

% Special characters Ascii code
for indexI = 33 : 64
    fprintf('%d', indexI)
    fprintf(" = ")
    fprintf('%c', char(indexI))
    fprintf("  ")
    if (mod(indexI,8) == 0)
        fprintf('\n')
        %fprintf('%d', indexI)
    end
end
fprintf('\n')


% Arithmetic Operators
sprintf('8 + 3 = %d', 8+3)
sprintf('8 - 3 = %d', 8-3)
sprintf('8 * 3 = %d', 8*3)
sprintf('8 / 3 = %d', 8/3)
sprintf('8 ^ 3 = %d', 8^3)
sprintf('8 %% 3 = %d', mod(8,3))

% Writing External functions, they have to be in the same directory
% e.g /Users/home/Documents/MATLAB/Examples/matlab/_matlab_etc_ac
%      test.m | main.m
m_ = mean([1 2 3 4])
my_m = my_mean([1 2 3 4])
test_my_mean = (m_ == my_m)

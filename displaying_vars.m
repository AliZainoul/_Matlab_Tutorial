% Compact format see : 
% https://www.mathworks.com/help/matlab/matlab_env/format-output.html
format compact 

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




% Boolean / logical
myBoolean = true;
myfalseBoolean = ~(~false);
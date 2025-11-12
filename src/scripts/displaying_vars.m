% Compact format see : 
% https://www.mathworks.com/help/matlab/matlab_env/format-output.html
format compact 

% Printing literal text into screen
% Documentation of fprintf: 
% https://www.mathworks.com/help/matlab/ref/fprintf.html
fprintf('Hello world \n')
fprintf("Hello world again \n")
% Prints the same result, the literal text has to be between
% signe quotes 'my text' (array of chars) 
% or double quotes "my text" (string) 



% Creating a variable named " name ", and assigning to it
% an input value of type string i.e: 's'
% input(...) is a keyword! More examples will be shown
% See: https://www.mathworks.com/help/matlab/ref/input.html
name = input('Please enter your name : ', 's');

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
my_number = input("Please enter a number : ");
% The number input may be: 
%                 an integer (e.g. : 554)
%            or   a   float (e.g. : 0.44)
%        or even  a   negative number (e.g. : -0.53)
%        or even  a   complex number (e.g. : complex(2,3) or 1+2i)
disp(my_number);

% See: https://www.mathworks.com/help/matlab/ref/disp.html
% disp(X) is for displaying (printing) the content X 
% without printing the
% variable name
% input: array

my_string = input(" Please enter a string: ", 's'); % s : format specifier
% Here we must specify the 's' keyword in input(...)
% Otherwise we get an error
disp(my_string);

my_vector = input(" Please enter a vector: ");
disp(my_vector); % displaying line vector
disp(my_vector'); % displaying column vector
% See: https://fr.wikipedia.org/wiki/Vecteur
% for definition of a vector.
% All we need here, is to know that a vector 
% is of the form: v = [v1, v2, ... , vn] (line vector)
% and             w = [v1; v2; ... ; vn]' (column vector)
% We say that:    v' = w (the symbol ' refers to Transpose)
% e.g. : v = [1, 2, 3] or w = [1 2 3]
% the two methods are valid in Matlab
% BTW: the ' operator is for transposing a vector
% See: https://fr.wikipedia.org/wiki/Vecteur_colonne
% and: https://fr.wikipedia.org/wiki/Matrice_transpos%C3%A9e


%{
---------------------------------------------------------------------------
IN := {0, 1, 2, 3, 4, 5, ...} (entiers naturels : uint) 
est inclus dans Z/
Z/ := -IN Union {0} Union IN := {..., -4, -3, -2, -1, 0, 1, 2, 3, 4, ... }
(entiers relatifs) (int)
est inclus ID
ID := {numerator / 10^n ; où : numérateur est dans Z/} (décimaux)
est inclus IQ
IQ := {numerator / denominator ; où : numerator dans Z/ et 
deniminator dans Z/ et deniminator =/= 0} (les rationnels)
est inclus dans IR
IR := ]-oo, +oo[ (droite réelle : tout nombre)
est inclus dans IC (double)
IC := {a+ib ; (a,b) dans IRxIR et sqrt(i) := -1}; (complex)
IR \ IQ : les irrationnels donc notamment sqrt(2), pi ...
---------------------------------------------------------------------------

---------------------------------------------------------------------------
1 octet = 1 byte := 8 bits = [0000 0000]
Bin : base 2 {0,1}
Octal : base 8 {0,1,2,3,4,5,6,7}
Décimal : base 10 {0,1,2,3,4,5,6,7,8,9}
Hexadécimal : base 16 {0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F}
---------------------------------------------------------------------------

%}

% Variables:  int8, int16, int32, int64, 
%             char, logical, double, single and unsigned types

my_integer_1 = int8(3);
disp(my_integer_1)

my_character_1 = 'A';
disp(class(my_character_1));

my_string_2 = 'Forming a string from a char array.';
disp(class(my_string_2))


my_character_2 = "A";
disp(class(my_character_2));

my_string_1 = "A";
disp(class(my_string_1))

my_string_3 = "Forming a string from a char array.";
disp(class(my_string_3))

% Boolean / logical
my_boolean = true;
my_false_boolean = ~(~false);
disp(my_boolean)
disp(my_false_boolean)
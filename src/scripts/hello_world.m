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

% Printing literal text into screen
% Documentation of fprintf: 
% https://www.mathworks.com/help/matlab/ref/fprintf.html
% Prints the same result, the literal text has to be between
% signe quotes ' my text ' or double quotes " my text "

disp("Hello World")
fprintf("Hello World \n")
sprintf("Hello world")

array_of_characters = 'Hello world again \n';
a_string = "Hello world again \n";
fprintf(array_of_characters)
fprintf(a_string)

% Creates a variable in the workspace named ans (default var)
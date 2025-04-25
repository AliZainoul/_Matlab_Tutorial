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

s1 = ' Hello world again \n ';
s2 = " Hello world again \n ";
fprintf(s1)
fprintf(s2)


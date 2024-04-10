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
% signe quotes ' my text ' (array of chars: class char) or 
% double quotes " my text " (string: class string)

a = 'Hello World! (an array of characters)';
b = "Hello World again! (a string)";
d = "end String (a string)";
e = b+newline+d; % a string
f = [a newline a]; % an array of character
name = "Ali";
age = 30;


disp("-------------------------------------------------------------------")
disp("DISP EXAMPLES")
fprintf('\n') % for returning to newline
disp (a) % displays content of variables
disp (b)
disp (e)
disp (f)
fprintf('\n') % for returning to newline
disp("END DISP EXAMPLES")
disp("-------------------------------------------------------------------")


disp("-------------------------------------------------------------------")
disp("SPRINTF EXAMPLES")
fprintf('\n') % for returning to newline
sprintf("Line 1\nLine 2\n\nLine 3\n") % write msg on Command Window or file
sprintf(a) % creates a string variable
sprintf(b) % creates a string variable
sprintf("Line 1\nLine 2\n\nLine 3\n") % creates a string variable
sprintf("My name is %s, I have %d YO" ,name, age)
fprintf('\n') % for returning to newline
disp("END SPRINTF EXAMPLES")
disp("-------------------------------------------------------------------")

disp("-------------------------------------------------------------------")
disp("END FPRINTF EXAMPLES")
fprintf('\n') % for returning to newline
fprintf("Line 1\nLine 2\n\nLine 3\n") % write msg on Command Window or file
fprintf(a+"\n") % write msg on Command Window or file
fprintf(b+"\n") % write msg on Command Window or file
fprintf("My name is %s, I have %d YO" ,name, age)
fprintf('\n') % for returning to newline
disp("END FPRINTF EXAMPLES")
disp("-------------------------------------------------------------------")



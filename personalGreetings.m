% Compact format see : 
% https://www.mathworks.com/help/matlab/matlab_env/format-output.html
format compact 

% Creating a variable named " name ", and assigning to it
% an input value of type string i.e: 's'
% input(...) is a keyword! More examples will be shown
% See: https://www.mathworks.com/help/matlab/ref/input.html
name = input(' What''s your name? ', 's');

% Checking if there is an entry, then printing the name 
% otherwise do nothing
myGreetings = hello_name(name);
if ~isempty(name)
    disp(myGreetings)
end
% A statement of type "if" must have an "end" keyword
% i.e: if condition 
%         do stuff
%      end
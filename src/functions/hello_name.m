function [greetings] = hello_name(name)
    if ~isempty(name)
    hello = "Hello ";
    % strcat
    % input: s_1, ..., s_n of type: char | cell | string
    % output: greetings of type: string
    % See: https://fr.mathworks.com/help/matlab/ref/strcat.html
    greetings = strcat(hello, name, "!");
    end
end
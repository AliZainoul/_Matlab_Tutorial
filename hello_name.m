function [greetings] = hello_name(name)
    if ~isempty(name)
        myHello = "Hello ";
        % strcat
        % input: s_1, ..., s_n of type: char | cell | string
        % output: outputString of type: string
        % See: https://fr.mathworks.com/help/matlab/ref/strcat.html
        greetings = strcat(myHello, name, "!");
    end
end
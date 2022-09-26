function [greetings] = hello_name ( name )
if ~isempty(name)
    myHello = "Hello ";
    greetings = strcat(myHello, name, "!");
end
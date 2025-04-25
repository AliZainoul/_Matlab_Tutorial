function [result] = my_mean(x)
    s = double(0);
    for i = 1:length(x)
        s = s + x(i);
    end
    result = s / length(x);
end
function [result_average] = calculate_average(x)
    result_average = sum(x(:))/numel(x); 
end
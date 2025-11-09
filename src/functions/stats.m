function [my_length, my_sum, my_average, my_std_deviation] = stats(x)
    my_length = length(x);
    my_sum = sum(x);
    my_average = my_sum/my_length;
    my_std_deviation = sqrt( sum( (x-my_average).^ 2 /my_length) );     
end

% Component wise squaring
% the function above may be rewritten as follow:
% function [my_length, my_sum, my_average, my_std_deviation] = stats(x)
%     my_average_vector = x-my_average
%     my_vector_deviation = my_average_vector.^ 2
%         the last line is equivalent to: 
%         sqr = @(x) x^2;
%         my_vector_deviation = []
%         for i = 1 : length(my_average_vector)
%             my_vector_deviation(i) = sqr(my_average_vector(i))
%         end
%       Dividing a vector by a scalar
%     my_vector_deviation_mean = my_vector_deviation / my_length 
%       Summing elements of a vector
%     average_deviation = sum(my_vector_deviation_mean)
%       Calculating the squirt root of a scalar
%     my_std_deviation = sqrt(average_deviation)   
% end
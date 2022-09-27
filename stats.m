function [myLength, mySum, myAverage, myStdeviation] = stats(x)
    myLength = length(x);
    mySum = sum(x);
    myAverage = mySum/myLength;
    myStdeviation = sqrt( sum( (x-myAverage).^ 2 /myLength) ); 
    % Component wise squaring
    % the function above may be rewritten as follow:
    % myAverageVector = x-myAverage
    % myVectorDeviation = myAverageVector.^ 2
        % the last line is equivalent to: 
        % sqr = @(x) x^2;
        % myVectorDeviation = []
        % for i = 1 : length(myAverageVector)
        %     myVectorDeviation(i) = sqr(myAverageVector(i))
        % end
    %   Dividing a vector by a scalar
    % myVectorDeviationMean = myVectorDeviation / myLength 
    %   Summing elements of a vector
    % averageDeviation = sum(myVectorDeviationMean)
    %   Calculating the squirt root of a scalar
    % myStdeviation = sqrt(averageDeviation)       
end
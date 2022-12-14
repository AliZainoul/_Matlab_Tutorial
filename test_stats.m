% Writing External functions, they have to be in the same directory
% e.g /Users/home/Documents/MATLAB/Examples/matlab/_matlab_etc_ac
%     stats.m | test_stats.m

myVector1 = [1 2 3 4]               % average = 10 / 4 = 2.5
myVector2 = [2.0 5.2 4.8]           % average = 12.0 / 3 = 4.0
myVector3 = [-2.2 -1.2 -9.6 +10.5]  % average = -2.5 / 4 = -0.6250
myVectors = {myVector1, myVector2, myVector3} % an array of vectors

mylengthVectors = numel(myVectors) % one can call numel(x) OR length(x)
% myotherlengthVectors = length(myVectors)
for i = 1 : mylengthVectors
    fprintf("------------------")
    fprintf("\n Test Case %d \n", i)
    [length_,sum_,average_, stD_] = stats(myVectors{i})
end
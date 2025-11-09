% Test script for summaryData
names = {'Lyon','Paris','Marseille'};
M = [1 4 2; 3 5 7; 6 2 9];

S = summary_data(M, names);
disp(S)

% Check second element
assert(strcmp(S(2).name, 'Paris'));      % Name should be 'Paris'
assert(S(2).sum_row == 15);              % 3 + 5 + 7 = 15
assert(S(2).max_row == 7);               % Max of [3 5 7] = 7

disp('All tests passed.');

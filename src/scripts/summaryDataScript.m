% Test script for summaryData
names = {'Lyon','Paris','Marseille'};
M = [1 4 2; 3 5 7; 6 2 9];

S = summaryData(M, names);

% Check second element
assert(strcmp(S(2).name, 'Paris'));     % Name should be 'Paris'
assert(S(2).sumRow == 15);              % 3 + 5 + 7
assert(S(2).maxRow == 7);               % Max of [3 5 7]

disp('? All tests passed.');

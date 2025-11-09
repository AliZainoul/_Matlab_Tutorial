%% =========================================================================
% Example: compute and display basic stats for multiple vectors
%% =========================================================================

% Define vectors
v1 = [1 2 3 4];               % average = 10 / 4 = 2.5
v2 = [2.0 5.2 4.8];           % average = 12.0 / 3 = 4.0
v3 = [-2.2 -1.2 -9.6 +10.5];  % average = -2.5 / 4 = -0.6250

% Store them in a cell array
vecs = {v1, v2, v3};

% Number of vectors
n_vecs = numel(vecs);  % or use length(vecs)

% Define format for output
fmt = [ ...
    '------------------\n' ...
    'Test Case %d\n' ...
    'Length  = %d\n' ...
    'Sum     = %.4f\n' ...
    'Average = %.4f\n' ...
    'Std dev = %.4f\n\n' ...
];

% Loop through all test cases
for i = 1:n_vecs
    [len, sum_val, avg, std_val] = stats(vecs{i});
    fprintf(fmt, i, len, sum_val, avg, std_val);
end

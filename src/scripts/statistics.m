%% =========================================================================
% Writing external functions: they have to be in the same directory
% e.g /Users/home/_matlab_tutorial
% Script : statistics.m 
% Requires : my_mean.m | calculate_average.m | stats.m functions
%% =========================================================================

%% Define vectors
v1 = [1 2 3 4];                 % avg = 10 / 4 = 2.5
v2 = [2.0 5.2 4.8];             % avg = 12.0 / 3 = 4.0
v3 = [-2.2 -1.2 -9.6 +10.5];    % avg = -2.5 / 4 = -0.6250
vecs = {v1, v2, v3};            % Combine vectors into a cell array

%% Number of vectors
n_vecs = length(vecs);  % numel() or length() can be used

%% Format
fmt = [ ...
    '------------------\n' ...
    'Test Case %d\n' ...
    'Mean (built-in)       = %.4f\n' ...
    'Mean (my_mean)        = %.4f\n' ...
    'Average (custom)      = %.4f\n' ...
    'Test my_mean match    = %d\n' ...
    'Test my_average match = %d\n\n' ...
];

%% Main loop
for i = 1:n_vecs
    m = mean(vecs{i});
    m_my = my_mean(vecs{i});
    avg = calculate_average(vecs{i});
    test_my = (m == m_my);
    test_avg = (m == avg);

    fprintf(fmt, i, m, m_my, avg, test_my, test_avg);
end


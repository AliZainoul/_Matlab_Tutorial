%% Description
% This script generates a set of normally distributed random numbers
% and visualizes them using a histogram. Additionally, it prints the count
% of values in each bin and the total number of samples.
%
% Steps:
% 1. Generate a vector of random numbers with a standard normal distrib.
% 2. Display a histogram of the generated numbers with labels and title.
% 3. Print the count of each histogram bin and the total sum.
%
% Variables:
%   random_data - A 10000x1 column vector containing random numbers
%                 drawn from a standard normal distribution 
%                 (mean = 0, standard deviation = 1). 
%                 Values can be any real number,
%                 although most (~68%) fall within [-1,1], 
%                 ~95% within [-2,2], and ~99.7% within [-3,3] 
%                 due to the properties of the normal
%                 distribution.
%   h           - Histogram object representing the frequency distribution
%                 of the generated data.

%% Code
% Generate a column vector of normally distributed random numbers
random_data = randn(10000,1);

% Display max and min values of the generated data
disp(['Max value: ', num2str(max(random_data))]);
disp(['Min value: ', num2str(min(random_data))]);

% Generate the histogram of the data
h = histogram(random_data); 
h.BinWidth = 0.2;  % set bin width for better visualization

% Add labels, title, and grid
xlabel('Value');
ylabel('Count');
title('Histogram of Standard Normal Distribution');
grid on; % Adds grid lines

% Display the histogram object details
disp(h);

%% Print counts of each bin and their sum
bin_counts = h.Values;          % counts in each histogram bin
total_count = sum(bin_counts);  % total number of samples

disp("Total count of all bins: " + num2str(total_count));

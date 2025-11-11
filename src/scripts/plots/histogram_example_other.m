%% Description
% This script generates a set of uniformly distributed random numbers
% in the interval [0,20] and visualizes them using a histogram.
% The y-axis is adjusted to better visualize counts up to around 500.
%
% Steps:
% 1. Preallocate a vector x of size n.
% 2. Fill x with random numbers uniformly distributed between 0 and 20.
% 3. Display the maximum and minimum values of x.
% 4. Create a histogram of x with 40 bins.
% 5. Adjust the y-axis to show counts clearly.
%
% Variables:
%   n  - Number of random samples to generate (scalar).
%   x  - 1xn row vector containing uniformly distributed random numbers
%        in the interval [0,20].
%   hx - Histogram object representing the frequency distribution of x.

%% Code
% Number of random samples
n = 10000;

% Preallocate vector
x = zeros(1,n);

% Fill vector with uniform random numbers in [0,20]
for i = 1:n
    x(i) = 20 * rand;
end

% Display max and min values
disp(['Max value: ', num2str(max(x))]);
disp(['Min value: ', num2str(min(x))]);

% Create histogram with 40 bins
hx = histogram(x, 40);

% Add labels, title, grid
xlabel('Value');
ylabel('Count');
title('Histogram of Uniform Distribution [0,20]');
grid on;

% Adjust y-axis to show counts clearly (between 0 and 500)
ylim([0 500]);

% Display histogram object details
disp(hx);

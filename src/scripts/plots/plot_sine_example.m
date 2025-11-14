%% =========================================================================
% Script: plot_sine_example.m
%
% Description:
%   This script demonstrates how to generate and plot a sine function 
%   over the interval [0, 2*pi]. The interval is discretized with a 
%   step size of pi/100, resulting in vectors for both x and y.
%
% Variables:
%   x : 1xN double vector
%       Discretized points in the interval [0, 2*pi] with step pi/100.
%
%   y : 1xN double vector
%       Sine values corresponding to each element of x.
%
% Usage:
%   Simply run the script in MATLAB:
%       >> plot_sine_example
%
% Reference:
%   MATLAB documentation for plotting:
%   https://fr.mathworks.com/help/matlab/ref/plot.html
%
% =========================================================================

%% Step 1: Define x values
x = 0:pi/100:2*pi;
% x is a 1xN = 1x201 vector over [0, 2*pi] with step pi/100

%% Step 2: Compute sine values
y = sin(x);
% y is a 1xN = 1x201 vector containing sin(x) for each element of x

%% Step 3: Plot the sine function
plot(x, y)
xlabel('x')
ylabel('sin(x)')
title('Plot of sin(x) over [0, 2\pi]')
grid on

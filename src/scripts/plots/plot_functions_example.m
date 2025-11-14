%% =========================================================================
% Script: plot_multiple_trig_functions.m
%
% Description:
%   This script demonstrates plotting multiple trigonometric functions
%   (sin and cos) over the interval [0, 2*pi]. It shows how to overlay
%   several functions on a single figure using different line styles,
%   and how to customize titles, labels, legends, and axes.
%
% Variables:
%   x  : 1xN double vector
%        Discretized points in [0, 2*pi] with step pi/100 (N = 201)
%
%   y1 : 1xN double vector
%        sin(x) values
%
%   y2 : 1xN double vector
%        sin(x-0.25) values
%
%   y3 : 1xN double vector
%        sin(x-0.5) values
%
%   y4 : 1xN double vector
%        cos(x) values
%
% Usage:
%   Run the script in MATLAB:
%       >> plot_multiple_trig_functions
%
% Reference:
%   MATLAB documentation for plotting:
%   https://fr.mathworks.com/help/matlab/ref/plot.html
%
% =========================================================================

%% Step 1: Define x values
x = 0:pi/100:2*pi;
% x is a 1xN vector over [0, 2*pi] with step pi/100

%% Step 2: Compute trigonometric functions
y1 = sin(x);        % sin(x)
y2 = sin(x-0.25);   % sin(x - 0.25)
y3 = sin(x-0.5);    % sin(x - 0.5)
y4 = cos(x);        % cos(x)

%% Step 3: Plot the functions
figure
plot(x, y1, x, y2, '--', x, y3, ':', x, y4, '-.')
title('Plot of sin(\{x, x-0.25 x-0.5\}) and cos(x) in [0, 2\pi]')
legend('sin(x)','sin(x-0.25)','sin(x-0.5)', 'cos(x)')
xlabel('Values of x on interval [0, 2\pi]')
ylabel('Values of sin({x, x-0.25 x-0.5}) and cos(x) in [0, 2\pi] resp.')

%% Step 4: Customize axes
hold on
ylim([0 1])
xlim([0 pi])

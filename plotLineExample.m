
x = 0:pi/100:2*pi
% x here represents an array / a vector of (1xn) components
% the interval [0, 2pi] here is discritized by a step of pi over 100.


y = sin(x)
% y here represents an array / a vector of (1xn) components 
% (same dim than x) so y is *NOT* a scalar but instead a vector!

plot(x,y) 

% main method/function for plotting 2-D lines
% See the documentation here: 
% https://fr.mathworks.com/help/matlab/ref/plot.html

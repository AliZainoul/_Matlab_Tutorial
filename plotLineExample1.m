x = 0:pi/100:2*pi;
% same as the previous example
y1 = sin(x);
% same as the previous example, here y1 refers to be an array or vector
% of size 1xn, where in this example n = 201. (201 values from 0 to 2pi)
y2 = sin(x-0.25);
y3 = sin(x-0.5);
y4 = cos(x);
% y2, y3, and y4 are the same than y1, they represent vectors/arrays in
% this context
% declaring the figure
figure
% main plot function, where we plot values of x versus values of 
% y1, y2, y3 and y4 respectively, the first two functions are default
% plotted, while the y3 have a linspace of ':' and y4 the linspace '-.'
plot(x,y1,x,y2,'--',x,y3,':', x, y4, '-.')
% Adding a title, always have to be under the plot function
title('Plot of sin(x), sin(x-0.25), sin(x-0.5) and cos(x) in [0, 2pi]')
% Adding a legend, same applies, the legend has to be under the plot fct
legend('sin(x)','sin(x-0.25)','sin(x-0.5)', 'cos(x)')
% Adding a xlabel, same applies, the xlabel has to be under the plot fct
xlabel('Values of x on interval [0, 2pi]')
% Adding a ylabel, same applies, the ylabel has to be under the plot fct
ylabel('Values of sin(x), sin(x-0.25), sin(x-0.5) and cos(x) respectively')

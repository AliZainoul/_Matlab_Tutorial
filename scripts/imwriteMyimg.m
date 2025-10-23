% An Example taken from the official documentation
% See: https://fr.mathworks.com/help/matlab/ref/imwrite.html

% Working on this case: 

%   If A is a grayscale or RGB color image of data type double or single, 
%   then imwrite assumes that the dynamic range is [0, 1] and automatically
%   scales the data by 255 before writing it to the file as 8-bit values. 
%   If the data in A is single, convert A to double before writing to a GIF 
%   or TIFF file.


% Generate 250x250 double values ranging from 0 to 1. 
A = rand(250); 


% Writing the values of A as pixels into myGray.png
imwrite(A,"fig/myGray.png") 
% myGray.png is a file created after this function!

% In order to read the image
myimg = imread('fig/myGray.png');

% In order to display the image
image(myimg)

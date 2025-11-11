%% Description
% This script demonstrates how to create a grayscale image from a matrix
% of double values and save it as a PNG file using `imwrite`. It also shows
% how to read the saved image back into MATLAB and display it.
%
% Steps:
% 1. Generate a 250x250 matrix of double values uniformly distributed in [0,1].
% 2. Write the matrix as a grayscale image to a PNG file using `imwrite`.
% 3. Read the saved image using `imread`.
% 4. Display the image using `image`.
%
% Variables:
%   A       - 250x250 matrix of double values in the interval [0,1]. Each
%             value corresponds to a pixel intensity in the grayscale image.
%   myimg   - Image matrix read from the saved PNG file. Typically an
%             uint8 matrix after reading with imread.
%
% Notes:
% - For grayscale or RGB images of type double or single:
%     * `imwrite` assumes the dynamic range is [0,1].
%     * Values are automatically scaled to [0,255] when saving as 8-bit PNG.
% - If the input matrix is of type single, convert to double before saving
%   to GIF or TIFF to avoid unexpected scaling.
% - `image(myimg)` displays the image. For proper intensity scaling,
%   `imshow(myimg)` can also be used.
%
% imwrite is essential in production MATLAB workflows whenever:
%   You need to save processed or generated images.
%   You are creating datasets for ML/DL.
%   You are converting image formats.
%   You are generating visual outputs for reports or GUIs.
%   You need to integrate MATLAB with ext. systems that require img. files.
%
% Reference:
% - MATLAB documentation for `imwrite`: 
%   https://fr.mathworks.com/help/matlab/ref/imwrite.html

%% Code
% Generate a 250x250 matrix of double values in [0,1]
A = rand(250);

% Write the matrix to a PNG file as a grayscale image
imwrite(A, "fig/img.png"); % Creates myGray.png (grayscale image)

% Read the saved image back into MATLAB
myimg = imread('fig/img.png');

% Display the image
image(myimg);
axis off;          % optional: hide axis ticks
axis image;        % optional: keep square pixels

% Read the image into a matrix
img = imread('peppers.jpg');

% Get dimensions (height, width, and channels)
[height, width, channels] = size(img);

% Get the data type of pixel values
dataType = class(img);

% Display the properties
fprintf('Height: %d\nWidth: %d\nChannels: %d\nData Type: %s\n', height, width, channels, dataType);

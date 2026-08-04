pkg load image;
clc; clear; close all;

% Step 1: Read image
I = imread('cameraman.jpg');

% Ensure image is 2D grayscale
if ndims(I) == 3
    I = I(:, :, 1);
end

[rows, cols] = size(I);

% Convert image to double to perform floating-point logarithmic operations
I_double = double(I);

% Step 2: Select constant c
% Standard formula for c: c = 255 / log(1 + max_pixel_value)
% This scales the final values back into the standard [0, 255] range.
c = 255 / log(1 + max(I_double(:)));

% Pre-allocate output matrix s
output_img = zeros(rows, cols, 'uint8');

% Step 3: For every pixel apply s = c * log(1 + r)
for x = 1:rows
    for y = 1:cols
        r = I_double(x, y);                   % Read pixel value r
        s = c * log(1 + r);                   % Apply s = c * log(1 + r)
        output_img(x, y) = uint8(s);          % Store s in output image
    end
end

% Step 4: Display output image
figure;
subplot(1, 2, 1); imshow(I); title('Original Image');
subplot(1, 2, 2); imshow(output_img); title('Log Transformed Image');

pkg load image;
clc; clear; close all;

% Step 1: Read full RGB image I
I = imread('peppers.jpg');

% Get all 3 dimensions: rows, columns, and color channels (3)
[rows, cols, channels] = size(I);

L = 256;
Max = L - 1;

% Pre-allocate a 3D output matrix matching full RGB size
N = zeros(rows, cols, channels, 'uint8');

% Step 3: Loop through rows, columns AND color channels
for x = 1:rows
    for y = 1:cols
        for ch = 1:channels
            Pixel = I(x, y, ch);
            N(x, y, ch) = Max - Pixel;
        end
    end
end

% Step 4: Display original color RGB alongside full color negative RGB
figure;
subplot(1, 2, 1); imshow(I); title('Original Color Image');
subplot(1, 2, 2); imshow(N); title('RGB Color Negative Image');

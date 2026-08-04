clc;
clear;
close all;

% 1. Read input image
img = imread('cameraman.jpg'); % Replace with your image path
[rows, cols, channels] = size(img);

% 2. Find Center and Define 100x100 Bounding Box
r = floor(rows/2);
c = floor(cols/2);
h = 50; % Half of 100

r_start = r - h + 1;
r_end   = r + h;
c_start = c - h + 1;
c_end   = c + h;

% 3. Extract the Center 100x100 Region
center_crop = img(r_start:r_end, c_start:c_end, :);

% -------------------------------------------------------------------------
% Display Side-by-Side Comparison
% -------------------------------------------------------------------------
figure;

% Slot 1: Original Image with Bounding Box
subplot(1, 2, 1);
imshow(img);
title(sprintf('Original Image (%dx%d)', cols, rows));
hold on;
% Draw red box around center ROI: rectangle('Position', [X, Y, Width, Height])
rectangle('Position', [c_start, r_start, 100, 100], 'EdgeColor', 'r', 'LineWidth', 2);
hold off;

% Slot 2: Cropped Center Portion
subplot(1, 2, 2);
imshow(center_crop);
title('Cropped Center (100x100)');

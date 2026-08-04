pkg load image;
clc; clear; close all;

% Step 1: Read input RGB image
img = imread('peppers.jpg');
[rows, cols, ~] = size(img);

% Separate RGB planes from image
Red   = double(img(:, :, 1));
Green = double(img(:, :, 2));
Blue  = double(img(:, :, 3));

% Step 1 (Algorithm): Normalize input values to [0.0, 1.0]
R = Red / 255.0;
G = Green / 255.0;
B = Blue / 255.0;

% Step 2 (Algorithm): Invert the channels to get C, M, Y
C = 1.0 - R;
M = 1.0 - G;
Y = 1.0 - B;

% Combine Cyan, Magenta, and Yellow planes into a 3D CMY image matrix
cmy_img = cat(3, C, M, Y);

% Display Original RGB and Separated CMY Channels
figure;
subplot(2, 2, 1); imshow(img);     title('Original RGB Image');
subplot(2, 2, 2); imshow(cmy_img);       title('Cyan Channel (C)');


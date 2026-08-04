pkg load image; clc; clear; close all;

% Step 1: Read images and match sizes
img1 = imread('cameraman.jpg');
if ndims(img1) == 3, img1 = img1(:, :, 1); end

img2 = imread('peppers.jpg');
if ndims(img2) == 3, img2 = img2(:, :, 1); end
img2 = imresize(img2, size(img1));

% Convert to double for math operations
I1 = double(img1);
I2 = double(img2);

% Step 2: Perform Image Addition (+)
add_double = I1 + I2;
add_double(add_double > 255) = 255; % Cap values above 255
added_img = uint8(add_double);

% Step 3: Perform Image Subtraction (-)
sub_double = I1 - I2;
sub_double(sub_double < 0) = 0;     % Cap negative values to 0
sub_img = uint8(sub_double);

% Step 4: Display results
figure;
subplot(2, 2, 1); imshow(img1);      title('Image 1 (Cameraman)');
subplot(2, 2, 2); imshow(img2);      title('Image 2 (Peppers)');
subplot(2, 2, 3); imshow(added_img);  title('Image Addition (+)');
subplot(2, 2, 4); imshow(sub_img);    title('Image Subtraction (-)');

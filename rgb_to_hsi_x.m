pkg load image;
clc; clear; close all;

% 1. Read & Normalize RGB components (0.0 to 1.0)
img = double(imread('peppers.jpg')) / 255;
R = img(:,:,1);  G = img(:,:,2);  B = img(:,:,3);

% 2. INTENSITY & SATURATION
I = (R + G + B) / 3;
S = 1 - (3 ./ (R + G + B + eps)) .* min(min(R, G), B);

% 3. HUE (using element-wise math)
num = 0.5 * ((R - G) + (R - B));
den = sqrt((R - G).^2 + (R - B) .* (G - B)) + eps;

val = max(-1, min(1, num ./ den)); % Clamp to [-1, 1]
theta = acosd(val);

H = theta;
H(B > G) = 360 - theta(B > G);    % If B > G, H = 360 - theta
H(R == G & G == B) = 0;           % Monochromatic pixels have H = 0

% 4. Display Results
figure;
subplot(2,2,1); imshow(img);     title('RGB');
subplot(2,2,2); imshow(H / 360); title('Hue');
subplot(2,2,3); imshow(S);       title('Saturation');
subplot(2,2,4); imshow(I);       title('Intensity');

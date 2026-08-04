pkg load image;
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end
[rows, cols] = size(img);
% 1. Divide image into 2 regions (e.g., Left = Important, Right = Background)
left_half  = img(:, 1:cols/2);        % Important region
right_half = img(:, (cols/2)+1:end);  % Unimportant background
% 2. Assign steps based on region importance
S_left  = 1;  % Important  -> Step = 1 (Keep every pixel)
S_right = 4;  % Background -> Step = 4 (Keep every 4th pixel)
% 3. Sample accordingly
sample_left  = left_half(1:S_left:end, 1:S_left:end);
sample_right = right_half(1:S_right:end, 1:S_right:end);
% 4. Display results side by side
figure;
subplot(1, 2, 1); imshow(sample_left);  title('Left Region (S=1, Full Resolution)');
subplot(1, 2, 2); imshow(sample_right); title('Right Region (S=4, Downsampled)');



pkg load image;
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end
[rows, cols] = size(img);

N = 10000; % Total samples desired

% Generate random row and column positions
rand_r = randi(rows, [N, 1]);
rand_c = randi(cols, [N, 1]);

% Create blank canvas and populate only at random sample points
output_img = zeros(rows, cols, 'uint8');
for i = 1:N
    output_img(rand_r(i), rand_c(i)) = img(rand_r(i), rand_c(i));
end

figure;
subplot(1, 2, 1); imshow(img); title('Original');
subplot(1, 2, 2); imshow(output_img); title('Random Sampling (10k points)');

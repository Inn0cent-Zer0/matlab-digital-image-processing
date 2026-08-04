pkg load image;
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end
[rows, cols] = size(img);

% Calculate local intensity difference (horizontal gradient)
diff_img = [abs(diff(double(img), 1, 2)), zeros(rows, 1)];

% High threshold = edge, Low threshold = flat region
threshold = 25;

output_img = zeros(rows, cols, 'uint8');

for r = 1:rows
    for c = 1:cols
        % Keep pixel if intensity difference is large, else sample sparingly
        if diff_img(r, c) > threshold || mod(r, 4) == 0 && mod(c, 4) == 0
            output_img(r, c) = img(r, c);
        end
    end
end

figure;
subplot(1, 3, 1); imshow(img); title('Original');
subplot(1, 3, 2); imshow(uint8(diff_img)); title('Intensity Differences');
subplot(1, 3, 3); imshow(output_img); title('Adaptive Sampling');

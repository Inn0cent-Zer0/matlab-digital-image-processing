pkg load image;
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end

% Manual Histogram (3 lines!)
counts = zeros(1, 256);
for g = 0:255
    counts(g + 1) = sum(img(:) == g);
end

% Plot result using basic bar chart
figure;
subplot(1, 2, 1); imshow(img); title('Image');
subplot(1, 2, 2); bar(0:255, counts); title('Manual Histogram');

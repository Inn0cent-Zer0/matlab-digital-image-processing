pkg load image;
% 1. Read input image and extract 1 channel (Grayscale)
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end
[orig_r, orig_c] = size(img);
% Step sizes to test
steps = [2, 4, 8];
figure;
subplot(2, 2, 1);
imshow(img);
title(sprintf('Original (%dx%d)', orig_r, orig_c));
% 2. Loop through each step size
for k = 1:length(steps)
    S = steps(k);
    % Manual Downsampling using Step Size S
    r_out = 1;
    sampled = zeros(floor(orig_r/S), floor(orig_c/S), class(img));
    for r = 1:S:orig_r
        c_out = 1;
        for c = 1:S:orig_c
            sampled(r_out, c_out) = img(r, c);
            c_out = c_out + 1;
        end
        r_out = r_out + 1;
    end
    % Display in subplot
    subplot(2, 2, k + 1);
    imshow(sampled);
    title(sprintf('Sampled S=%d (%dx%d)', S, size(sampled,1), size(sampled,2)));
end




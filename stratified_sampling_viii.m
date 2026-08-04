pkg load image;
img = imread('cameraman.jpg');
if ndims(img) == 3, img = img(:, :, 1); end
[rows, cols] = size(img);

blockSize = 16;
K = 2; % Fixed samples per block/stratum

output_img = zeros(rows, cols, 'uint8');

for r = 1:blockSize:rows
    for c = 1:blockSize:cols
        % Pick K random offsets inside the current block
        for k = 1:K
            r_rand = min(r + randi([0, blockSize-1]), rows);
            c_rand = min(c + randi([0, blockSize-1]), cols);

            output_img(r_rand, c_rand) = img(r_rand, c_rand);
        end
    end
end

figure;
subplot(1, 2, 1); imshow(img); title('Original');
subplot(1, 2, 2); imshow(output_img); title('Stratified Sampling (2 per block)');


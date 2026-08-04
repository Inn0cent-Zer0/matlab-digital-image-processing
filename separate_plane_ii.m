pkg load image;

% Read the RGB image
img = imread('peppers.jpg');
[rows, cols, ~] = size(img);

% Pre-allocate output arrays with zeros
redPlane   = zeros(rows, cols, 3, 'uint8');
greenPlane = zeros(rows, cols, 3, 'uint8');
bluePlane  = zeros(rows, cols, 3, 'uint8');

% Loop through every pixel manually
for r = 1:rows
    for c = 1:cols
        % Extract Red component only (Channels 2 and 3 remain 0)
        redPlane(r, c, 1) = img(r, c, 1);

        % Extract Green component only (Channels 1 and 3 remain 0)
        greenPlane(r, c, 2) = img(r, c, 2);

        % Extract Blue component only (Channels 1 and 2 remain 0)
        bluePlane(r, c, 3) = img(r, c, 3);
    end
end

% -------------------------------------------------------------------------
% Display All Three Planes
% -------------------------------------------------------------------------
figure;

% Top-Left: Original Image
subplot(2, 2, 1);
imshow(img);
title('Original RGB Image');

% Top-Right: Red Plane
subplot(2, 2, 2);
imshow(redPlane);
title('Red Plane');

% Bottom-Left: Green Plane
subplot(2, 2, 3);
imshow(greenPlane);
title('Green Plane');

% Bottom-Right: Blue Plane
subplot(2, 2, 4);
imshow(bluePlane);
title('Blue Plane');

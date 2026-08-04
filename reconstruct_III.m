pkg load image;

% Read the RGB image
img = imread('peppers.jpg');
[rows, cols, ~] = size(img);

% Pre-allocate output arrays with zeros
redPlane   = zeros(rows, cols, 3, 'uint8');
greenPlane = zeros(rows, cols, 3, 'uint8');
bluePlane  = zeros(rows, cols, 3, 'uint8');

% Loop through every pixel manually to extract planes
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
% Core Logic: Reconstruct the RGB Image
% -------------------------------------------------------------------------

% Pre-allocate output array for reconstructed image
reconstructedImg = zeros(rows, cols, 3, 'uint8');

% Loop through every pixel manually to combine R, G, and B planes
for r = 1:rows
    for c = 1:cols
        for ch = 1:3
            % Add intensity values from all 3 planes at coordinate (r, c, ch)
            reconstructedImg(r, c, ch) = redPlane(r, c, ch) + ...
                                         greenPlane(r, c, ch) + ...
                                         bluePlane(r, c, ch);
        end
    end
end

% -------------------------------------------------------------------------
% Display All Planes & Reconstructed Image
% -------------------------------------------------------------------------
figure;

% Slot 1: Original Image
subplot(2, 3, 1);
imshow(img);
title('Original RGB Image');

% Slot 2: Red Plane
subplot(2, 3, 2);
imshow(redPlane);
title('Red Plane');

% Slot 3: Green Plane
subplot(2, 3, 3);
imshow(greenPlane);
title('Green Plane');

% Slot 4: Blue Plane
subplot(2, 3, 4);
imshow(bluePlane);
title('Blue Plane');

% Slot 5: Reconstructed Image
subplot(2, 3, 5);
imshow(reconstructedImg);
title('Reconstructed Image (R + G + B)');

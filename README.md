
# Digital Image Processing with MATLAB 🖼️⚡

A comprehensive collection of MATLAB implementations covering core Digital Image Processing (DIP) techniques, including spatial transformations, sampling methods, color space conversions, image enhancement, compression, and feature detection.

---

## 🛠️ Requirements & Prerequisites

* **Environment:** MATLAB R2020a or newer
* **Toolboxes Required:** 
  * Image Processing Toolbox

---

## 📚 Table of Modules & Topics

### 1. Fundamentals & Properties
* **Read an Image & Study Properties:** Image acquisition, dimensions, color channels, and spatial resolution analysis.
* **Extraction of Central Portion:** Spatial cropping and region-of-interest (ROI) isolation.
* **RGB to Binary & Grayscale:** Channel reduction, luminance mapping, and binary thresholding.

### 2. Sampling & Quantization
* **Uniform Sampling:** Downsampling images using uniform grid spaces.
* **Non-Uniform Sampling:** Spatial sampling variations across spatial regions.
* **Random Sampling:** Stochastic pixel extraction techniques.
* **Stratified Sampling:** Sub-region partitioned sampling methods.
* **Adaptive Sampling:** Gradient-based variable sampling rates.
* **Image Quantization:** Reducing color bit depth and intensity levels.

### 3. Color Space Conversions
* **Separate RGB Planes:** Extracting individual Red, Green, and Blue color channels.
* **Reconstruct RGB Image:** Merging isolated channels back into full-color space.
* **RGB to HSI:** Converting Red-Green-Blue to Hue-Saturation-Intensity.
* **RGB to CMY:** Converting additive RGB space to subtractive CMY space.
* **CMY to CMYK:** Extracting the Key (Black) component for 4-channel printing space.

### 4. Point Operations & Intensity Transformations
* **Image Negative:** Inverting pixel intensity values ($255 - I$).
* **Log Transformation:** Dynamic range compression for high-contrast images.
* **Contrast Stretching:** Linear normalization of pixel intensity histograms.
* **Gamma Correction:** Power-law non-linear contrast adjustments.
* **Histogram Processing:** Intensity distribution analysis and histogram display.

### 5. Image Arithmetic & Spatial Transformations
* **Image Addition & Subtraction:** Frame arithmetic and differential analysis.
* **Image Averaging:** Temporal noise reduction via multi-frame averaging.
* **Image Zooming & Shrinking:** Spatial interpolation and resizing algorithms.
* **Image Translation:** Spatial shifting across Cartesian coordinates $(x, y)$.

### 6. Filtering, Enhancement & Restoration
* **Image Enhancement:** Spatial domain contrast and clarity adjustments.
* **Image Smoothing:** Low-pass filtering for noise suppression (Gaussian/Average filters).
* **Image Sharpening:** High-pass filtering and Laplacian edge enhancement.

### 7. Feature & Edge Detection
* **Point Detection:** Highlighting isolated intensity discontinuities using 3x3 masks.
* **Line Detection:** Directional line detection masks (Horizontal, Vertical, Diagonal).
* **Prewitt Edge Detection:** First-order derivative edge detection using Prewitt operators.
* **Sobel Edge Detection:** Gradient-based edge magnitude detection using Sobel kernels.
* **Threshold Segmentation:** Binarization based on optimal global thresholding.

### 8. Image Compression
* **Run Length Encoding (RLE):** Lossless spatial redundancy compression.
* **Compression Ratio Calculation:** Evaluating bit savings and storage efficiency.

---

## 🚀 How to Run

1. Clone this repository:

   git clone [https://github.com/Inn0cent-Zer0/matlab-digital-image-processing.git](https://github.com/Inn0cent-Zer0/matlab-digital-image-processing.git)



2. Open MATLAB and navigate to the project folder.
3. Place your target image (e.g., `peppers.jpg`) in the working directory.
4. Open and run any `.m` script directly in the MATLAB editor.


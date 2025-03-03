# Image Processing in Python

This project demonstrates various image processing techniques using Python, `NumPy`, `Matplotlib`, and `PIL`. The operations include basic manipulations like cropping, flipping, rotating, and transformations such as contrast adjustment, gamma correction, and color inversion.

## Operations Included

1. **Loading and Displaying an Image**  
   - Reads a grayscale image and displays it.

2. **Checking Image Dimensions**  
   - Retrieves the height and width of the image.

3. **Checking Data Type of Image Array**  
   - Determines if the image array contains integer values.

4. **Finding Pixel Intensity Range**  
   - Computes the minimum and maximum pixel values.

5. **Displaying the Image**  
   - Displays the original image.

6. **Cropping the Image**  
   - Extracts the central portion of the image.

7. **Pasting the Cropped Part onto a New Image**  
   - Places the cropped image at the center of a blank matrix.

8. **Flipping the Image Vertically**  
   - Uses `np.flipud()` to flip the image along the vertical axis.

9. **Transposing the Image**  
   - Uses `.T` to swap the rows and columns of the image.

10. **Flipping the Image Horizontally**  
    - Uses `np.fliplr()` or `[:, ::-1]` to mirror the image.

11. **Rotating the Image 90 Degrees**  
    - Uses `np.rot90()` to rotate the image.

12. **Color Inversion**  
    - Subtracts pixel values from 255.

13. **Lightening and Darkening the Image**  
    - Increases or decreases pixel intensity with threshold handling.

14. **Creating Andy Warhol-Style Art**  
    - Arranges variations of brightness into a 2x2 grid.

15. **Converting to Black & White**  
    - Binarizes the image by thresholding.

16. **Reducing Shades in the Image**  
    - Limits pixel values to 8 discrete levels.

17. **Increasing Image Contrast**  
    - Scales pixel values for higher contrast.

18. **Applying Gamma Correction**  
    - Adjusts brightness with gamma transformation.

## Requirements
- Python 3.x
- `matplotlib`
- `numpy`
- `imageio`
- `PIL` (for reduced color operations)

# Command to install modules
```code
pip install matplotlib numpy imageio pillow
```

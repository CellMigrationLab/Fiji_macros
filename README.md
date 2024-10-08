# Fiji macros
A small collection of useful macro for Fiji (ImageJ).

#### SLD to Tif Exporter
**[`SLD_image_exporter.ijm`](SLD_image_exporter.ijm)**: Batch exports and converts Slidebook (.sld) files to .tif. Requires the Slidebook update site.

#### ImageJ Macro for Counting ROIs per Frame
**[`Count_ROI_per_Slice.ijm`](Count_ROI_per_Slice.ijm)**: Counts ROIs per frame in an image stack with one channel and multiple slices. Outputs ROI counts and differences to the console.

#### Measure Intensity for All Slices
**[`Measure_Intensity_All_Slices.ijm`](Measure_Intensity_All_Slices.ijm)**: Measures intensity for all slices in a stack. Iterates through each slice, setting and measuring the current slice.

#### Run Analyze Particles on All ROIs
**[`Run_Analyse_particle_on_all_ROI.ijm`](Run_Analyse_particle_on_all_ROI.ijm)**: Runs the Analyze Particles function on all ROIs in the ROI Manager. Iterates through each ROI, selecting and analyzing particles.

#### Batch Processing Script
**[`Batch_processing.ijm`](Batch_processing.ijm)**: Batch processing macro empty backbone. Just add your own code to process folders.

#### BitDepth checker Script
**[`bitDepth_checker.ijm`](bitDepth_checker.ijm)**: Prints the bit-depth of each image in a folder.

#### Random Point Generation within ROI
**[`Random_point_generation_ROI.ijm`](Random_point_generation_ROI.ijm)**: An ImageJ macro that randomly generates points inside a binary mask. The script generates a specified number of random points, overlays them onto the image, and counts how many of them fall inside the region of interest (ROI) where the pixel value is 255. 

#### Intensity_measurement_using_mask
 **[`Intensity_measurement_using_mask.ijm`](Intensity_measurement_using_mask.ijm)** An ImageJ macro that opens the channel of interest and corresponding segmented mask image to measure the intensity based on the mask image.

#### ROIwithHoles_to_Label_images
 **[`ROIwithHoles_to_Label_images.ijm`](ROIwithHoles_to_Label_images.ijm)** An ImageJ macro to convert ROIs with holes into label images. This macro was from Hanna and Sujan used for his doughnut masks.

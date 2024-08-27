//Fiji macro for intensity measurement from specific channel using mask images
//corresponding images needs to have same file name

maskfolder = getDirectory("Please select folder with masks!");
channel_folder = getDirectory("Select folder with channel channels");

mask_filelist = getFileList(maskfolder);
channel_filelist = getFileList(channel_folder);

for(i = 0; i < lengthOf(mask_filelist); i++){
    image_file_mask = mask_filelist[i];
    // Construct the expected channel image filename
    image_file_channel = channel_folder + image_file_mask;

    if (endsWith(image_file_mask, ".tif") && File.exists(image_file_channel)){
    	//looks for file with same name and opens it if found
        open(maskfolder + image_file_mask);
        getTitle();
        rename("mask_image");
        setThreshold(1, 65535, "raw");
        run("Convert to Mask");

        open(image_file_channel);
        getTitle();
        rename("channel");
        run("Set Measurements...", "area mean standard min redirect=[channel] decimal=3");

        selectImage("mask_image");
        run("Analyze Particles...", "display summarize");

        close("mask_image");
        close("channel");
    }
}

		
		


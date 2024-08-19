    // Get the number of ROIs in the ROI Manager
    n = roiManager("count");
    
    // Loop through each ROI
    for (i=0; i<n; i++) {
        // Select the current ROI from the ROI Manager
        roiManager("select", i);     

   
        // Run the Analyze Particles function
        run("Analyze Particles...", "  show=Nothing display clear include summarize");
    }
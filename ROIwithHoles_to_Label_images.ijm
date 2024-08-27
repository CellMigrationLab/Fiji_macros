//Fiji macro to convert ROIs with holes into label images sucha s donut masks
//not prepared for batch processing
		setAutoThreshold("Default dark");
		run("Create Selection");
		roiManager("Add");// add everything that is thresholded to the first roi (ROI_0)
		
		run("Analyze Particles...", "display add");
		roi_number=roiManager("Count");
		
		for (i=1; i<roi_number; i++) {
			roiManager("Select", newArray(0,i));//select the ROI with everything (ROI_0) plus one of the others 
			roiManager("AND");//keep what is common to both ROIs
			roiManager("Add");
			}
		
			roiManager("Deselect");
			roiManager("Measure"); 
		
		//delete the first ROIs in the list that are no longer needed.
		for (i=0; i<roi_number; i++) {
			roiManager("Select", 0);
			roiManager("Delete");
		}
		run("Clear Results");
		run("ROIs to Label image");
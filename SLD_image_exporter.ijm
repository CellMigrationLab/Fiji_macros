//This macro requires the SlideBook plugin for the BioFormats macro extensions, which is found through the ImageJ/Help/Update... menu
  
//Defining directories for saving and analysis
dir = getDirectory("Select a directory containing one or several .sld files");
saveDir = dir + "/Extracted Tifs/";
File.makeDirectory(saveDir);
files = getFileList(dir);

//Batch process .tif extraction
setBatchMode(true);
k=0;
n=0;
run("Bio-Formats Macro Extensions");
for(f=0; f<files.length; f++) {
	if(endsWith(files[f], ".sld")) {
		k++;
		id = dir+files[f];
		Ext.setId(id);
		Ext.getSeriesCount(seriesCount);
		n+=seriesCount;
		for (i=0; i<seriesCount; i++) {
			run("Bio-Formats Importer", "open=["+id+"] color_mode=Default view=Hyperstack stack_order=XYCZT use_virtual_stack series_"+(i+1));
			Title = getTitle();
			saveAs("tiff", saveDir+Title+".tif");
			
      		run("Close All");
     		}	
		}
	}
setBatchMode(false);
exit();
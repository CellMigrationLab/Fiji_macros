

// Number of points to generate
n_points = 200;


name = getTitle(); // Name of the image
getDimensions(x,y,z,c,t); // Size of the image

// Initialize arrays that will contain point coordinates
xcoords = newArray(n_points);
ycoords = newArray(n_points);

// Seed the random number generator
random('seed', getTime());

// Create n_points points in XY
for (i=0; i<n_points; i++) {
        xcoords[i] = round(random()*x);
        ycoords[i] = round(random()*y);
}

// Overlay them on the image
makeSelection("point", xcoords, ycoords);

// Count points that have a value of 255
prevRes = nResults;
run("Measure");
count = 0;

for (i=0; i<n_points;i++) {
        val = getResult("Mean",i+prevRes);
        if (val == 255) {
                count++;
        }
        if (val == 0) {
                setKeyDown("alt"); makePoint(xcoords[i], ycoords[i]); setKeyDown("none");;
        }
}

// Output to log window.
print("Image "+name+": "+count+" points out of "+n_points+" inside objects of interest");

roiManager("Add");
newImage("Random", "8-bit black", 1024, 1024, 1);
roiManager("Select", 0);
run("Draw", "slice");
run("Select None");
setAutoThreshold("Huang dark");
run("Analyze Particles...", "display clear summarize add");
run("ROI Map");




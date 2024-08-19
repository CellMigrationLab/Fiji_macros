dir = getDirectory("images");

list = getFileList(dir);

n = lengthOf(list);
print("Total images: " + n);

setBatchMode(true);

for (i = 0; i < n; i++) {
	path = dir + list[i];
    open(path);
    
    bitDepth() 
    
    close("*");
}

print("Done!");
%Author - Kaleb Goering kaleb.goering@gmail.com
%Example on how to use the HTMLPackage
%Not a perfect example, just a rough one using every command necessary
filename = './sample/sample.html';

[fid, filepath] = startHTMLFile(filename, 'Sample');

imagefolder = 'images';

createHTMLH1(fid, 'HTML Package Example'); %Same way for H1, H2, and H3

text = 'This example shows how to use each and every\n function necessary to create HTML documents using this package. Some functions in the package are only called by function examples in this sample.\n And they are not needed to be called by any user.';

createHTMLText(fid, text); %Same as above

data = cell(2, 3);
data{1, 1} = createImageTag('./sample/Fist.bmp', 20, 20, filepath, imagefolder);
data{1, 2} = 'Good';
data{1, 3} = 10;
data{2, 2} = 'Missing';
data{2, 3} = 0; 
%Notice data{2, 1} is not given a value, this is to showcase the allowance
%of absent spaces

columnNames = {'Gesture', 'Image', 'Notes', 'Eval'}; %The first row of values in a table
rowNames = {'Fist', 'Peace'};

tableStruct1 = createTableStruct(columnNames, rowNames, data);
tableStruct2 = createTableStruct({}, rowNames, data);

columnNames = {'Image', 'Notes', 'Eval'}; %Next tables will not have row names thus 1 less column

tableStruct3 = createTableStruct(columnNames, {}, data);
tableStruct4 = createTableStruct({}, {},data);

createHTMLH2(fid, 'Table examples');
createHTMLH3(fid, 'Names in rows and columns');
createHTMLTable(fid, tableStruct1);
createHTMLH3(fid, 'Row names only');
createHTMLTable(fid, tableStruct2);
createHTMLH3(fid, 'Column names only');
createHTMLTable(fid, tableStruct3);
createHTMLH3(fid, 'No names');
createHTMLTable(fid, tableStruct4);

endHTMLFile(fid); %necessary to finish the document, WILL NOT WORK WITHOUT IT
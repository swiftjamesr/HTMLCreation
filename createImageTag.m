function tag = createImageTag(filename, width, height, filepath, imagefolder)
%%Parameters
%filename       - String value of the path of the image
%width          - Number value of the percentage of the viewport the
%image's width should be
%height         - Number value of the percentage of the viewport the
%image's height should be
%filepath       - Directory of the html file, return value from
%startHTMLFile
%%Output
%tag            - String value of the equivalent HTML tag
%%
savepathslashes = strfind(filename,'\');
filename(savepathslashes) = '/';
if ~isempty(savepathslashes)
    if ~exist(fullfile(filepath,imagefolder,filename(savepathslashes(end)+1:end)))
        copyfile(filename, [filepath imagefolder], 'f');
    end
else
    copyfile(filename, [filepath imagefolder], 'f');
end
file_cell = regexp(filename, '/', 'split');
file = file_cell(end);

tag = ['<img src="' './' imagefolder '/' file{1} '" style="width:' num2str(width) 'vw;height:' num2str(height) 'vw">'];
end
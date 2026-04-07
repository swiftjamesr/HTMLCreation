function [fid, filepath] = startHTMLFile(filename, pageTitle) %imagefolder
%%Parameters
%filename           - Filename for the html file
%pageTitle          - Title for the html page
%%Output
%fid                - File id necessary to write to the file
%filepath           - Directory of the file relative to working directory,
%necessary for image movement
%%
savepathslashes = strfind(filename,'\');
filename(savepathslashes) = '/';

file_cell = regexp(filename, '/', 'split');
file = file_cell(end);
filepath = regexp(filename, file{1}, 'split');
filepath = filepath{1};
% mkdir(strcat(filepath, imagefolder));

fid = fopen(filename, 'w');
fprintf(fid, ['<html>\n<head>\n<title>' pageTitle '</title>\n</head>\n<body>\n']);
end
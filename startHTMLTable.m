function [] = startHTMLTable(fid)
%%Parameters
%fid            - File id of the html file for output
%%Output
%void
%%
fprintf(fid, ['<table border="1" style="text-align:left;border:1px solid black;border-collapse:collapse">\n']);
end
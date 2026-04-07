function createHTMLH3(fid, text)
%%Parameters
%fid            - File id of the html file for output
%text           - Text to be formatted as H3
%%Output
%void
%%%%
fprintf(fid, ['<h3>' text '</h3>\n']);
end
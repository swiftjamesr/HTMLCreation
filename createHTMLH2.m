function createHTMLH2(fid, text)
%%Parameters
%fid            - File id of the html file for output
%text           - Text to be formatted as H2
%%Output
%void
%%%%
fprintf(fid, ['<h2>' text '</h2>\n']);
end
function createHTMLH1(fid, text)
%%Parameters
%fid            - File id of the html file for output
%text           - Text to be formatted as H1
%%Output
%void
%%%%
fprintf(fid, ['<h1>' text '</h1>\n']);
end
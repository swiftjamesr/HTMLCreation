function [] = endHTMLTable(fid)
%%Parameters
%fid            - File id of the html file for output
%%Output
%void
%%%%
fprintf(fid, ['</table>\n']);
end
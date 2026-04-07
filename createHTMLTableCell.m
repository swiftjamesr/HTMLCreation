function createHTMLTableCell(fid, data)
%%Parameters
%fid            - File id of the html file for output
%data           - Value of the data to be inserted in table
%%Output
%void
%%
if isempty(data)
    data = ' ';
end
if ischar(data)
    fprintf(fid, ['<td>' data '</td>\n']);
else
    if data > 10 && data < 20
        fprintf(fid, ['<td  bgcolor="#FFa500">' num2str(data) '</td>\n']);
    elseif data > 20
        fprintf(fid, ['<td  bgcolor="#FF0000">' num2str(data) '</td>\n']);
    else
        fprintf(fid, ['<td>' num2str(data) '</td>\n']);
    end
end
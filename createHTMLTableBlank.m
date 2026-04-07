function createHTMLTableBlank(fid, tableInfo)
%%Parameters
%fid            - File id of the html file for output
%tableInfo      - Struct with the info for the table to be created
%%Output
%void
%%
startHTMLTable(fid);
for i = 1:size(tableInfo.data, 1)
    startHTMLTableRow(fid);
    for j = 1:size(tableInfo.data, 2)
        createHTMLTableCell(fid, tableInfo.data{i, j});
    end
    endHTMLTableRow(fid);
end
endHTMLTable(fid);
end
function createHTMLTableColumn(fid, tableInfo, varargin)
    %%Parameters
    %fid            - File id of the html file for output
    %tableInfo      - Struct with the info for the table to be created
    %%Output
    %void
    %%
    
    % Defaults
    fontSize = 16;
    fontWeight = 'bold';
    
    % Parse optional inputs
    for i = 1:2:length(varargin)
        switch lower(varargin{i})
            case 'fontsize'
                fontSize = varargin{i+1};
            case 'fontweight'
                fontWeight = varargin{i+1};
        end
    end
    
    startHTMLTable(fid);
    startHTMLTableRow(fid);
    for i = 1:length(tableInfo.columnNames)
        createHTMLTableHeader(fid, tableInfo.columnNames{i},'FontSize',FontSize,'FontWeight',FontWeight);
    end
    endHTMLTableRow(fid);
    
    for i = 1:size(tableInfo.data, 1)
        startHTMLTableRow(fid);
        for j = 1:size(tableInfo.data, 2)
            createHTMLTableCell(fid, tableInfo.data{i, j});
        end
        endHTMLTableRow(fid);
    end
    endHTMLTable(fid);
end
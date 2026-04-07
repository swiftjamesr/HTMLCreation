function createHTMLTableRowColumn(fid, tableInfo, varargin)
    %%Parameters
    %fid            - File id of the html file for output
    %tableInfo      - Struct with the info for the table to be created
    %%Output
    %void
    %%
    % ---- Defaults ----
    rowFontSize   = 16;
    colFontSize   = 16;
    rowFontWeight = 'bold';
    colFontWeight = 'bold';

    % ---- Parse optional inputs ----
    for i = 1:2:length(varargin)
        switch lower(varargin{i})
            case 'rowfontsize'
                rowFontSize = varargin{i+1};
            case 'colfontsize'
                colFontSize = varargin{i+1};
            case 'rowfontweight'
                rowFontWeight = varargin{i+1};
            case 'colfontweight'
                colFontWeight = varargin{i+1};
            otherwise
                error('Unknown parameter: %s', varargin{i});
        end
    end

    startHTMLTable(fid);
    startHTMLTableRow(fid);
    for i = 1:length(tableInfo.columnNames)
        createHTMLTableHeader(fid, tableInfo.columnNames{i},'FontSize',colFontSize,'FontWeight',colFontWeight);
    end
    endHTMLTableRow(fid);
    
    for i = 1:size(tableInfo.data, 1)
        startHTMLTableRow(fid);
        createHTMLTableHeader(fid, tableInfo.rowNames{i},'FontSize',rowFontSize,'FontWeight',rowFontWeight)
        for j = 1:size(tableInfo.data, 2)
            createHTMLTableCell(fid, tableInfo.data{i, j});
        end
        endHTMLTableRow(fid);
    end
    endHTMLTable(fid);
end
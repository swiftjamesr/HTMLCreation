function createHTMLTable(fid, tableInfo, varargin)
    %% Parameters
    % fid            - File id
    % tableInfo      - Struct with table info
    % Optional (name-value pairs):
    %   'FontSize'   - font size in px (default: 16)
    %   'FontWeight' - 'normal' or 'bold' (default: 'normal')

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

    % ---- Pass styling down to sub-functions ----
    if ~isempty(tableInfo.columnNames)
        if ~isempty(tableInfo.rowNames)
            createHTMLTableRowColumn(fid,tableInfo,'RowFontSize',rowFontSize,'ColFontSize',colFontSize,'RowFontWeight',rowFontWeight,'ColFontWeight',colFontWeight);
        else
            createHTMLTableColumn(fid,tableInfo,'FontSize',colFontSize,'FontWeight',colFontWeight);
        end
    else
        if ~isempty(tableInfo.rowNames)
            createHTMLTableRow(fid,tableInfo,'FontSize',rowFontSize,'FontWeight',rowFontWeight);
        else
            createHTMLTableBlank(fid, tableInfo);
        end
    end
end
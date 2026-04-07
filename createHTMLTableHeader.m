function [] = createHTMLTableHeader(fid, text, varargin)
    %%Parameters
    %fid            - File id of the html file for output
    %text           - Text to be formatted as a table header 
    %%Output
    %void
    %%%%

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

    fprintf(fid, ...
        '<th style="font-size:%dpx; font-weight:%s;">%s</th>\n', ...
        fontSize, fontWeight, text);
end
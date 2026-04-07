function createHTMLText(fid, text, varargin)
%% Parameters
% fid        - File id
% text       - Text to be inserted
% fontSize   - (optional) Font size in px
% fontWeight - (optional) 'normal' or 'bold'

    % Defaults
    fontSize = 16;
    fontWeight = 'normal';
    
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
        '<p style="font-size:%dpx; font-weight:%s;">%s</p>\n', ...
        fontSize, fontWeight, text);
end
function paragraphs = createHTMLMultiLines(text, varargin)
%% Parameters
% text        - Cell array of strings (n x 1)
% fontSize    - (optional) Font size in px
% fontWeight  - (optional) 'normal' or 'bold'
%
%% Output
% paragraphs  - HTML string with formatted paragraphs

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

    paragraphs = '';

    for i = 1:size(text, 1)
        paragraphs = [paragraphs ...
            sprintf('<p style="font-size:%dpx; font-weight:%s;">%s</p>', ...
            fontSize, fontWeight, text{i})];
    end
end
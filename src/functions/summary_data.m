function S = summary_data(M, names)
% summary_data summarizes each row of a matrix with metadata.
%
% Inputs:
%   M     - n-by-n numeric matrix
%   names - 1-by-n cell array of strings (names corresponding to rows)
%
% Output:
%   S - 1-by-n struct array with fields:
%       ? name   : name of the row (from names)
%       ? sum_row : sum of elements in the row
%       ? max_row : maximum value in the row

    % Number of rows
    n = size(M, 1);           
    % Preallocate struct array
    S = struct('name', '', 'sum_row', 0, 'max_row', 0);
    for i = 1:n
        S(i).name       = names{i}    ;   % Assign name from cell array
        S(i).sum_row    = sum(M(i, :));   % Sum of the row
        S(i).max_row    = max(M(i, :));   % Max of the row
    end
end

function S = summaryData(M, names)
% summaryData summarizes each row of a matrix with metadata.
%
% Inputs:
%   M     - n-by-n numeric matrix
%   names - 1-by-n cell array of strings (names corresponding to rows)
%
% Output:
%   S - 1-by-n struct array with fields:
%       ? name   : name of the row (from names)
%       ? sumRow : sum of elements in the row
%       ? maxRow : maximum value in the row

    n = size(M, 1);           % Number of rows
    S = struct('name', '', 'sumRow', 0, 'maxRow', 0); % Preallocate struct array

    for i = 1:n
        S(i).name = names{i}         % Assign name from cell array
        S(i).sumRow = sum(M(i, :))   % Sum of the row
        S(i).maxRow = max(M(i, :))   % Max of the row
    end
end

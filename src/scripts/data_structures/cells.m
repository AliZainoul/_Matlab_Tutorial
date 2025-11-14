%% Description
% =========================================================================
% MATLAB CELL ARRAYS ? COMPLETE GUIDE
% =========================================================================
%
% This script demonstrates *all* key aspects of working with cell arrays in
% MATLAB, including:
%
%   ? All constructors and initialization methods
%   ? Access, modification, concatenation, and deletion
%   ? Conversion to/from numeric arrays
%   ? Inspection, logical tests, and high-level operations
%   ? Use of cellfun and nested cells
%
% -------------------------------------------------------------------------
% DEFINITION
% -------------------------------------------------------------------------
% A cell array is a data container that can hold elements of *different types
% and sizes*. Cells are created using curly braces `{}` and can store numbers,
% strings, arrays, structs, tables, or even other cells.
%
% -------------------------------------------------------------------------
% INDEXING RULES
% -------------------------------------------------------------------------
%  - `A{idx}` ? Accesses the *content* of the cell (dereferencing)
%  - `A(idx)` ? Accesses the *cell container* itself
%
% Example:
%     C = {1, [2 3], 'text'};
%     C{2} = [4 5];   % replaces contents of second cell
%     D = C(1:2);     % extracts a subset of cells
%
% -------------------------------------------------------------------------
% MAIN CONSTRUCTORS
% -------------------------------------------------------------------------
% 1. Literal syntax:
%       C = {1, 2, 'Hello', [3 4 5]};
%
% 2. Empty initialization:
%       C = {};               % empty 0x0 cell
%
% 3. Preallocated cell of given size:
%       C = cell(3,4);        % 3-by-4 cell array of empty matrices
%
% 4. Cell array from numeric matrix:
%       A = magic(3);
%       C = num2cell(A);      % each element becomes one cell
%
% 5. Cell array from submatrices:
%       M = reshape(1:8, 4, 2);
%       C = mat2cell(M, [2 2], [1 1]);  % split M into sub-blocks
%
% 6. Conversion from strings:
%       C = cellstr(['one '; 'two '; 'three']);
%
% -------------------------------------------------------------------------
% COMMON OPERATIONS
% -------------------------------------------------------------------------
%  - Concatenation: [A B] or cat(dim, A, B)
%  - Deletion: C(i) = []
%  - Appending: C{end+1} = newValue
%  - Conversion: cell2mat, num2cell, cellstr, string
%  - Inspection: iscell, iscellstr, isempty, cellfun
%
% -------------------------------------------------------------------------
% PERFORMANCE TIPS
% -------------------------------------------------------------------------
%  - Always preallocate with `cell(m,n)` before a loop for efficiency.
%  - Avoid `cell2mat` unless all cell contents are same-sized numeric arrays.
%  - Use `cellfun` for clean vectorized operations.
%

%% =========================================================================
%  SECTION 1 ? CELL CONSTRUCTORS
% =========================================================================

disp('=== CELL CONSTRUCTORS ===');

% 1. Literal initialization
C1 = {1, 'text', [1 2 3], magic(2)};
disp('Literal cell array:');
disp(C1);

% 2. Empty cell
C2 = {};
disp('Empty cell array:');
disp(C2);

% 3. Preallocated cell (3x4)
C3 = cell(3, 4);
disp('Preallocated empty 3x4 cell array:');
disp(C3);

% Fill preallocated cells
for i = 1:numel(C3)
    C3{i} = i;
end
disp('Filled preallocated cell array:');
disp(C3);

% 4. Conversion from numeric matrix using num2cell
A = magic(3);
C4 = num2cell(A);
disp('Cell array created with num2cell from magic(3):');
disp(C4);

% 5. Conversion from matrix to cell blocks using mat2cell
M = reshape(1:8, 4, 2);
C5 = mat2cell(M, [2 2], [1 1]);
disp('Cell array created with mat2cell (split by blocks):');
disp(C5);

% 6. Conversion from character matrix using cellstr
S = ['one  '; 'two  '; 'three'];
C6 = cellstr(S);
disp('Cell array of strings created with cellstr:');
disp(C6);

% 7. Nested cell array
C7 = { {'nested', 1}, {magic(2), 'ok'}, 42 };
disp('Nested cell array:');
disp(C7);

%% =========================================================================
%  SECTION 2 ? BASIC OPERATIONS
% =========================================================================

disp('=== BASIC OPERATIONS ===');

% Accessing and modifying cells
C1{2} = 'world';
disp('Modified second cell:');
disp(C1);

% Concatenation (horizontal)
C_concat = [C1, {'extra', 99}];
disp('Concatenated cell array:');
disp(C_concat);

% Deletion
C1(3) = [];
disp('Cell array after deletion:');
disp(C1);

% Appending new element
C1{end+1} = 'new element';
disp('After appending new element:');
disp(C1);

%% =========================================================================
%  SECTION 3 ? CONVERSIONS
% =========================================================================

disp('=== CONVERSIONS ===');

% Convert homogeneous cell to numeric array
C_num = {10, 20, 30};
array_from_cell = cell2mat(C_num);
disp('Converted numeric cell to array:');
disp(array_from_cell);

% Convert array to cell array
back_to_cell = num2cell(array_from_cell);
disp('Converted numeric array back to cell:');
disp(back_to_cell);

%% =========================================================================
%  SECTION 4 ? INSPECTION AND LOGICAL TESTS
% =========================================================================

disp('=== INSPECTION ===');

disp(['Is cell? ', string(iscell(C1))]);
disp(['Are all cells strings? ', string(iscellstr(C1))]);
disp(['Is last cell empty? ', string(isempty(C1{end}))]);

% Get data types inside a cell
types = cellfun(@class, C1, 'UniformOutput', false);
disp('Data types of each cell:');
disp(types);

%% ========================================================================
%  SECTION 5 ? HIGH-LEVEL OPERATIONS
% =========================================================================

disp('=== HIGH-LEVEL OPERATIONS ===');

% Apply function to each element
lens = cellfun(@numel, C1, 'UniformOutput', false);
disp('Number of elements in each cell:');
disp(lens);

% Logical indexing with cellfun
isNumeric = cellfun(@isnumeric, C1);
disp('Logical mask for numeric elements:');
disp(isNumeric);

% Extract only numeric cells
numericCells = C1(isNumeric);
disp('Extracted numeric cells:');
disp(numericCells);


% Creating cells
cell_array = {1, 'Hello', [3, 4, 5], magic(3)};

% Displaying cells
disp('Cell array:');
disp(cell_array);

% Accessing cell elements
element1 = cell_array{1}; % Accessing the first cell
disp('First element:');
disp(element1);

% Modifying a cell
cell_array{2} = 'World'; % Modifying the second cell
disp('Modified cell array:');
disp(cell_array);

% Concatenating cells
con_cell = {'additional', [6, 7, 8]};
concatenated_cell_vertically = cat(1, cell_array', con_cell');
disp('Concatenated cell array (concatenated_cell_vertically):');
disp(concatenated_cell_vertically);

concatenated_cell_horizontally = cat(2, cell_array, con_cell);
disp('Concatenated cell array (concatenated_cell_horizontally):');
disp(concatenated_cell_horizontally);

cell_array_same = {1, 2, 3, 4, 5};

% Converting cells to array
cell_to_array = cell2mat(cell_array_same); 
% Converts the cell to array if elements of the cell are the same
disp('Converted cell to array:');
disp(cell_to_array);

% Adding elements to a cell
cell_array{end+1} = 'new element'; % Adding a new element to the end
disp('Cell array after adding new element:');
disp(cell_array);

% Deleting elements from a cell
cell_array(2) = []; % Deleting the second cell
disp('Cell array after deleting second element:');
disp(cell_array);

% Checking if a cell is empty
isempty_result = isempty(cell_array{end});
disp('Is the last cell empty?');
disp(string(isempty_result));

% Checking if cells are empty or null
is_empty_or_null_result = iscellstr(cell_array);
disp('Are all cells empty or null?');
disp(string(is_empty_or_null_result));

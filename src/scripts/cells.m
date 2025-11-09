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
concatenated_cell = cat(2, cell_array, {'additional', [6, 7, 8]});
disp('Concatenated cell array:');
disp(concatenated_cell);

% Converting cells to array
% cell_to_array = cell2mat(cell_array); % Converts the cell to array if elements of the cell are the same
% disp('Converted cell to array:');
% disp(cell_to_array);

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
disp(isempty_result);

% Checking if cells are empty or null
is_empty_or_null_result = iscellstr(cell_array);
disp('Are all cells empty or null?');
disp(is_empty_or_null_result);

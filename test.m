List = dir(fullfile(matlabroot, 'toolbox', 'mean', '**', '*.m'));
for k = 1:numel(List)
    File = fullfile(List(k).folder, List(k).name);
    Data = strsplit(fileread(File), '\n');
    Data = strtrim(Data);
    Data(strncmp(Data, '%', 1)) = [];
    n    = nnz(cellfun('length', Data));
    if n > 0
        disp(File)
    end
end
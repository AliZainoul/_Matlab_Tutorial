function show_matrix_stats(M)
    [rows, cols] = size(M);
    fmt = ['The matrix has (size=%dx%d),\n' ...
           'and has elements: %d\n'];
    fprintf(fmt, rows, cols, numel(M));
end

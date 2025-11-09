function show_matrix_stats(M)
    [r, c] = size(M);
    fmt = ['The matrix has (size=%dx%d),\n' ...
           'and has elements: %d\n'];
    fprintf(fmt, r, c, numel(M));
end
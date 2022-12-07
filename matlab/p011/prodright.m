function res = prodright(mat, row, col)
    nums = [mat(row,col), mat(row,col+1), mat(row,col+2), mat(row,col+3)];
    res = prod(nums);
end
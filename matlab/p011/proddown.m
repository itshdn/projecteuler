function res = proddown(mat, row, col)
    nums = [mat(row,col), mat(row+1,col), mat(row+2,col), mat(row+3,col)];
    res = prod(nums);
end
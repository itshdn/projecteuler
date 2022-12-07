function res = proddiagr(mat, row, col)
    nums = [mat(row,col), mat(row+1,col+1), mat(row+2,col+2), mat(row+3,col+3)];
    res = prod(nums);
end
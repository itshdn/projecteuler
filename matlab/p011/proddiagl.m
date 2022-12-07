function res = proddiagl(mat, row, col)
    nums = [mat(row,col+3), mat(row+1,col+2), mat(row+2,col+1), mat(row+3,col)];
    res = prod(nums);
end
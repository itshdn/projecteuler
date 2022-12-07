close all; clc;

res = 0;

for row = 1:20
    for col = 1:20
        if row <= 17
            res = max(res, proddown(nums, row, col));
        end
        if col <= 17
            res = max(res, prodright(nums, row, col));
        end
        if row <= 17 && col <= 17
            res = max(res, proddiagr(nums, row, col));
            res = max(res, proddiagl(nums, row, col));
        end
    end
end

disp(res);
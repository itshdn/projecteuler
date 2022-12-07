clear; close all; clc;

trinum = 0;
inc = 1;
divs = 0;

while divs <= 500
    trinum = trinum + inc;
    inc = inc + 1;
    divs = mydivisors(trinum);
end

disp(trinum);

function answer = mydivisors(n)
    facs = factor(n);
    nums = unique(facs);
    answer = 1;

    for idx = 1:length(nums)
        num = nums(idx);
        answer = answer * (sum(facs==num) + 1);
    end
end
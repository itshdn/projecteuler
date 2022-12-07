clear; close all; clc;

vals = [];
combs = nchoosek([2:100,2:100],2);

for comb = 1:length(combs)
    val = combs(comb,1)^combs(comb,2);
    if sum(ismember(vals,val)) == 0
        vals(end+1) = val;
    end
end

disp(length(vals));
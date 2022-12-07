clear; close all; clc;

num = char(sym(2^1000));
answer = 0;

for idx = 1:length(num)
    answer = answer + str2double(num(idx));
end

disp(answer);
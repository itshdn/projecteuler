clear; close all; clc;

nums = [9 8 7 6 5 4 3 2 1 0];
p = perms(nums);
disp(p(1e6,:));
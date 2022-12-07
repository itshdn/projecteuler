clear; close all; clc;

answer = 1;
last = 1;
inc = 2;
cursize = 3;

while cursize <= 1001
    thissum = 4*last + 10*inc;
    answer = answer + thissum;
    last = last + 4*inc;
    inc = inc + 2;
    cursize = cursize + 2;
end

disp(answer);
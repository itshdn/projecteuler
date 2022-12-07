clear; close all; clc;

answer = 0;

for n = 2:6*9^5
    if n == calc(n)
        answer = answer + n;
    end
end

disp(answer);

function answer = calc(n)
    answer = 0;
    n = char(string(n));
    for idx = 1:length(n)
        answer = answer + (n(idx) - '1' + 1)^5;
    end
end
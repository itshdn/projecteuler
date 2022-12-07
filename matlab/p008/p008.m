close all; clc;
format long g

answer = 0;
newStr = char(strjoin(data, ""));

for i = 1:(1000-12)
    thisnum = newStr(i:i+12);
    thisval = 1;
    for j = 1:13
        thisval = thisval * str2double(thisnum(j));
    end
    answer = max(answer, thisval);
end

disp(answer);
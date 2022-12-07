clear; close all; clc;

fibb = zeros(1,1000);
fibb(1) = 1;
fibb(2) = 2;
i = 2;
answer = 2;

while(fibb(i)<4e6)
    i=i+1;

    fibb(i) = fibb(i-1)+fibb(i-2);
    
    if mod(fibb(i),2)==0
        answer = answer + fibb(i);
    end
end

disp(answer);
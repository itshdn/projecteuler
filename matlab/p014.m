clear; close all; clc;

global collatzlist;
collatzlist = zeros(1,1e6-1);
collatzlist(1) = 1;
longest = 1;
answer = 1;

for num = 2:1e6-1
    if ~collatzlist(num)
        totaltimes = collatz(num, 0);
    end
    if collatzlist(num) > longest
        longest = collatzlist(num);
        answer = num;
    end
end

disp(answer);

function totaltimes = collatz(num, times)
    global collatzlist;
    if num < 1e6
        if collatzlist(num)
            totaltimes = times + collatzlist(num);
        else
            totaltimes = collatz(nextterm(num), times + 1);
            collatzlist(num) = totaltimes - times;
        end
    else
        totaltimes = collatz(nextterm(num), times + 1);
    end
end

function num = nextterm(num)
    if mod(num, 2) == 0
        num = num / 2;
    else
        num = 3*num + 1;
    end
end
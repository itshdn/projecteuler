clear; close all; clc;

longest = 0;
answer = 0;

for n = 2:999
    thislen = maxdigits(n);
    if thislen > longest
        answer = n;
        longest = thislen;
    end
end

disp(answer);

function answer = maxdigits(n)
    rmdrs = [];
    currmdr = mod(10, n);
    while currmdr ~= 0 && sum(ismember(rmdrs, currmdr)) == 0
        rmdrs(end+1) = currmdr;
        currmdr = mod(10*currmdr, n);
    end
    if currmdr == 0
        answer = 0;
    else
        answer = length(rmdrs);
    end
end
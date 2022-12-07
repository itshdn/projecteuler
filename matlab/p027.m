clear; close all; clc;

longest = 0;

for b = primes(1000)
    for a = -999:999
        thislen = quadfunc(a,b);
        if thislen > longest
            longest = thislen;
            answer = a*b;
        end
    end
end

disp(answer);

function answer = quadfunc(a,b)
    answer = 0;
    n = 0;
    thisnum = n^2 + a*n + b;
    while thisnum > 0 && isprime(thisnum)
        answer = answer + 1;
        n = n + 1;
        thisnum = n^2 + a*n + b;
    end
end
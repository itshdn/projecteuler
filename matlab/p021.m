clear; close all; clc;

isamicable = zeros(1,1e4);
answer = 0;

for n = 2:1e4-1
    if ~isamicable(n)
        m = sumofpropdivs(n);
        if n ~= m && m < 1e4 && sumofpropdivs(m) == n
            isamicable(n) = 1;
            isamicable(m) = 1;
            answer = answer + n + m;
        end
    end
end

disp(answer);

function answer = sumofpropdivs(n)
    answer = 1;
    primefacs = factor(n);
    
    if length(primefacs) > 1
        primemap = containers.Map('KeyType', 'double', 'ValueType', 'double');
    
        for idx = 1:length(primefacs)
            if isKey(primemap, primefacs(idx))
                primemap(primefacs(idx)) = primemap(primefacs(idx)) + 1;
            else
                primemap(primefacs(idx)) = 1;
            end
        end
    
        primes = cell2mat(keys(primemap));
        mults = cell2mat(values(primemap));
    
        for idx = 1:length(primemap)
            thisprime = primes(idx);
            mult = mults(idx);
            answer = answer * ((thisprime^(mult+1) - 1) / (thisprime - 1));
        end
    
        answer = answer - n;
    end
end
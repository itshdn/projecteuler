clear; close all; clc;

upperlim = 28123;
canbysum = zeros(1,upperlim);
abunds = [];

for n = 1:upperlim
    if sumofpropdivs(n) > n
        abunds(end+1) = n;
        if n*2 <= upperlim
            canbysum(n*2) = 1;
        end
    end
end

combs = nchoosek(abunds, 2);

for idx = 1:length(combs)
    summ = combs(idx,1) + combs(idx,2);
    if summ <= upperlim
        canbysum(summ) = 1;
    end
end

answer = 0;
for idx = 1:upperlim
   if ~canbysum(idx)
       answer = answer + idx;
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
clear; clc;

res = 0;

for num = 3:1e7-1
    this_num = num;
    fac_sum = 0;

    while num > 0
        fac_sum  = fac_sum + factorial(mod(num,10));
        num = floor(num / 10);
    end

    if fac_sum == this_num
        res = res + this_num;
    end
end

res
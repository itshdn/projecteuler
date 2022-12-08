clear; clc;

res = 0;

for num = 1:2:1e6
    b = dec2bin(num);
    n = num2str(num);
    if all(b == reverse(b)) && all(n == reverse(n))
        res = res + num;
    end
end

res
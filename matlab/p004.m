clear; close all; clc;

a = 100;
b = 110;
res = 0;

while b < 1000
    while a < 1000
        if ispalindrome(a*b)
            res = max([res, a*b]);
        end
        a = a + 1;
    end
    a = 100;
    b = b + 11;
end

disp(res);

function y = ispalindrome(x)
    str = num2str(x);
    y = (str == str(end:-1:1));
end
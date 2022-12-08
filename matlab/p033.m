clear; clc;

res = sym(1);
count = 0;

for num = 10:99
    for dem = num:99
        n1 = floor(num / 10);
        n0 = mod(num, 10);
        d1 = floor(dem / 10);
        d0 = mod(dem, 10);
        n = [n1 n0];
        d = [d1 d0];

        if n0 == 0 && d0 == 0
            continue
        end

        for common = intersect(n, d)
            n = n(n~=common);
            d = d(d~=common);
        end

        if length(n) == 1 && length(d) == 1 && ...
            d(1) ~= 0 && prod(n) / prod(d) == num / dem
            res = res * sym(num/dem);
            count = count + 1;
        end
    end
end

res
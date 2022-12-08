clear; clc;

found = [];
adds = [3 7];
for t = 10:10:1e8
    for a = adds
        cur_num = t + a;
        num = int2vec(cur_num);
        if intersect(num, [4 6 8])
            continue;
        end
        isprimes = zeros(1,length(num)*2);
        for strip = 1:length(num)
            this_num1 = vec2int(num(strip:end));
            this_num2 = vec2int(num(1:end-strip+1));
            isprimes(strip) = isprime(this_num1);
            isprimes(strip+length(num)) = isprime(this_num2);
        end
        if all(isprimes)
            found(end+1) = cur_num;
        end
    end
    if length(found) >= 11
        break;
    end
end

sum(found(1:11))

function answer = int2vec(num)
    this_num = num;
    digits = 0;
    while this_num > 0
        digits = digits + 1;
        this_num = floor(this_num/10);
    end
    answer = zeros(1,digits);
    idx = length(answer);
    while num > 0
        answer(idx) = mod(num,10);
        num = floor(num/10);
        idx = idx - 1;
    end
end

function answer = vec2int(vec)
    answer = 0;
    len = length(vec);
    for idx = 1:len
        answer = answer + vec(idx)*10^(len-idx);
    end
end
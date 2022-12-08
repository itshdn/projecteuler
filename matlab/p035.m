clear; clc;

count = 4;

for num = 11:2:1e6-1
    vec = int2vec(num);

    if intersect(vec, [2 4 5 6 8])
        continue;
    end

    isThisNumPrime = 1;
    for rot = 1:length(vec)
        vec = rotateVec(vec);
        if ~isprime(vec2int(vec))
            isThisNumPrime = 0;
            continue;
        end
    end
    
    if isThisNumPrime
        count = count + 1;
    end
end

count

function answer = int2vec(num)
    this_num = num;
    digits = 0;
    while this_num > 0
        digits = digits + 1;
        this_num = floor(this_num/10);
    end
    answer = zeros(1,digits);
    idx = 1;
    while num > 0
        answer(idx) = mod(num,10);
        num = floor(num/10);
        idx = idx + 1;
    end
end

function answer = vec2int(vec)
    answer = 0;
    len = length(vec);
    for idx = 1:len
        answer = answer + vec(idx)*10^(len-idx);
    end
end

function vec = rotateVec(vec)
    first = vec(1);
    for idx = 2:length(vec)
        vec(idx-1) = vec(idx);
    end
    vec(end) = first;
end
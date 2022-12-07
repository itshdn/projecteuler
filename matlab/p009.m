clear; close all; clc;

found = 0;
answer = 0;

for a = 1:1000
    for b = 1:1000
        c = a^2 + b^2;

        if a + b + sqrt(c) == 1000
            found = 1;
            answer = a * b * sqrt(c);
            break
        end
    end

    if found
        break
    end
end

disp(answer);
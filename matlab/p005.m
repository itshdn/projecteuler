clear; close all; clc;

powers = zeros(1,20);

for n = 1:20
    facs = factor(n);
    for idx = 1:length(facs)
        powers(facs(idx)) = max(powers(facs(idx)), sum(facs==facs(idx)));
    end
end

answer = 1;

for n = 1:20
    if powers(n)
        answer = answer * n^powers(n);
    end
end

disp(answer);
clear; close all; clc;

fid = fopen("p022_names.txt");
names = sort(split(string(textscan(fid, "%s")), '","'));
fclose(fid);

answer = 0;

for idx = 1:length(names)
    name = char(names(idx));
    answer = answer + nameval(name, idx);
end

disp(answer);

function answer = nameval(name, pos)
    answer = 0;
    for idx = 1:length(name)
        answer = answer + (name(idx) - 'A' + 1);
    end
    answer = answer * pos;
end
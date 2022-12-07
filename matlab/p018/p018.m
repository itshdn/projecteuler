close all; clc;

global table;

table = data;

for row = 2:15
    for col = 1:row
        calc(row, col);
    end
end

disp(max(table(end,1:end)));

function calc(row, col)
    global table;
    if col == 1
        table(row,col) = table(row,col) + table(row-1,col);
    end
    if col == row
        table(row,col) = table(row,col) + table(row-1,col-1);
    end
    if ~(col == 1 || col == row)
        table(row,col) = table(row,col) + max(table(row-1,col-1), table(row-1,col));
    end
end
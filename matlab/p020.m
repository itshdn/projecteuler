clear; close all; clc;

x = strread(char(prod(sym(1:100))), '%c');

disp(sum(str2num(x)));
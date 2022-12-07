clear; close all; clc;

n = 1000;

A = 3:3:n;
B = 5:5:n;
C = 15:15:n;

disp(sum(A)+sum(B)-sum(C));
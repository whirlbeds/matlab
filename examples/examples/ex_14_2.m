close all
clear
clc

N = 100000;
w = randn(N, 1);
R = xcorr(w);
P = pwelch(w);
ex_14_2_plot();


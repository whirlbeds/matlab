close all
clear
clc

b = [1 -2 1];
a = [3 1 -6 1];
sys = tf(b,a);
sys_ss = ss(sys);
A = sys_ss.A
B = get(sys_ss,'B')
close all
clear
clc

AF = zpk([],[-2,1],1);
rlocus(AF);
K = rlocfind(AF)
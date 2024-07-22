close all
clear
clc

T = 2;
N = 2000;
t = linspace(-T/2,T/2-T/N,N)';
f = (t>-1/2&t<1/2);
OMG = 16*pi;
K = 1000;
omg = linspace(-OMG/2,OMG/2-OMG/K,K)';
U = exp(-1j*omg*t');
F = T/N*U*f;
V = exp(1j*t*omg');
fs = OMG/2/pi/K*V*F;

ex_4_2_plot();

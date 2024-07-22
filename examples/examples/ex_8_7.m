clear
close all
clc

b1 = -1.1; b2 = 0.6;
a = [1, b1, b2];
b = [b2, b1, 1];
figure;
subplot(2,1,1), zplane(b,a);
subplot(2,1,2), impz(b,a);
figure, freqz(b,a);

n = [0:40]';
T = 10;
x1 = sin(2*pi*1/T*n);
x2 = mod(n,T)<(T/2);
y = filter(b,a,[x1,x2]);

ex_8_7_plot();
ex_8_7_sound();

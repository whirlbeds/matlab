close all
clear
clc

[t,omg,FT,IFT] = prefourier([-1,5],1000,[-50,50],1000);
tau = 1;
H1 = exp(1j*(-1.5*omg));
H2 = exp(1j*(-50-sign(omg).*sqrt(abs(omg))));
x = (t >= 0 & t < tau);
X = FT*x;
y1 = IFT*(X.*H1);
y2 = IFT*(X.*H2);
ex_13_2_alt_plot1();


x1 = (t >= 0 & t < tau).*sin(2*pi*t);
x2 = (t >= 0 & t < tau).*sin(4*pi*t);
X1 = FT*x1;
X2 = FT*x2;
y11 = IFT*(X1.*H1);
y12 = IFT*(X1.*H2);
y21 = IFT*(X2.*H1);
y22 = IFT*(X2.*H2);
ex_13_2_alt_plot2();

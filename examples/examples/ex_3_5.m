close all
clear
clc

C = 1; L = 1/4; R1 = 1; R2 = 3/2;
a = [-1/R1/C,-1/C;1/L,-R2/L];
b = [1/R1/C;0];
c = [-1/R1,0];
d = 1/R1;
sys = ss(a,b,c,d);

tn = [-10:0.01:-0.01]';
en = 2*(tn<0);
[rn, tn1, xn]= lsim(sys,en,tn);

x0 = xn(length(tn),:);
t = [0:0.01:10]';
e = 4*(t>=0);
rzs = lsim(sys,e,t);

ezi = 0*(t>=0);
rzi = lsim(sys,ezi,t,x0);

rf = lsim(sys,e,t,x0);

r1 = lsim(sys,[en;e],[tn;t]);
ex_3_5_plot();

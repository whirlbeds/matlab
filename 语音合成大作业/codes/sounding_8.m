close all;
clear;
clc;

fsp=8000;
N=100;
seq=zeros(fsp,1);

n=1;
while n<=fsp
    seq(n)=1;
    m=ceil(n/(fsp/N));
    PT=80+5*mod(m,50);
    n=n+PT;
end

sound(seq);
%plot(seq);

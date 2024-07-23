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


nomi=[1];
deno=[1,-1.3789,0.9506];
seq_ftr=filter(nomi,deno,seq);

sound(seq_ftr);
subplot(2,1,1);
plot(seq);
title('e(n)');
subplot(2,1,2);
plot(seq_ftr);
title('s(n)');
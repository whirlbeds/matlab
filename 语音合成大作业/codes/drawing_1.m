close all
clear
clc

nomi=1;
deno=[1,-1.3789,0.9506];
or=(0:500)';
x=(or==0);


title('零极点图');
zplane(nomi,deno);
figure;

title('频率响应');
freqz(nomi,deno);
figure;

subplot(1,2,1);
[hi,t]=impz(nomi,deno,or);
stem(or,hi);
title('impz求冲激响应');
xlabel('n');
ylabel('hi');
subplot(1,2,2);
hf=filter(nomi,deno,x);
stem(or,hf);
title('filter求冲激响应');
xlabel('n');
ylabel('hf');


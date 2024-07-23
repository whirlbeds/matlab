close all;
clear;
clc;

fsp=8000;

seq1=zeros(fsp,1);
f1=200;
pulse1=floor(fsp/f1);
for n=1:f1 %matlab start from 1
    seq1(pulse1*n)=1;
end
%sound(seq1);
%plot(seq1);

seq2=zeros(fsp,1);
f2=300;
pulse2=floor(fsp/f2);
for n=1:f2 %matlab start from 1
    seq2(pulse2*n)=1;
end
sound(seq2);
%plot(seq2);
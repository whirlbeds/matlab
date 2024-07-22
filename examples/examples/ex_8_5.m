clear
close all
clc

T = 2;
OMG = 100*pi;
N = 100;
[t,omg,FT,IFT] = prefourier([-T/2,T/2],N,[-OMG/2,OMG/2],N);
f = (t>-1/2&t<1/2);
F = FT*f;
fs = IFT*F;
fs = real(fs);
f1 = f.*exp(-1j*omg(1)*t);
F1 = T*exp(1j*omg(1)*t(1))/N*fft(f1);
F_fft = F1.*exp(-1j*omg*t(1));
f1_ifft = OMG*exp(-1j*omg(1)*t(1))/2/pi*ifft(F1);
f_ifft = f1_ifft.*exp(1j*omg(1)*t);
f_ifft = real(f_ifft);
ex_8_5_plot();

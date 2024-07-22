close all
clear
clc

figure(1);
x=-3:0.3:3;
y=x;
[X,Y]=meshgrid(x,y);
[theat,R]=cart2pol(X,Y);
Z=sinc(R);
subplot(2,3,1);
contour(peaks(30),10); colorbar;
title('contour');   
subplot(2,3,2), hold on; 
title('plot3');     
plot3(X,Y,Z); grid on;
axis tight;
subplot(2,3,3), hold on, box on; 
title('waterfall'); 
waterfall(membrane(1)); 
axis tight;
subplot(2,3,4), hold on, box on; 
title('contour3');  
contour3(peaks(30),25); 
axis tight;
subplot(2,3,5), hold on, box on; 
title('mesh');      
mesh(X,Y,Z); 
axis tight;
subplot(2,3,6), hold on, box on; 
title('surf');      
surf(X,Y,Z); 
axis tight;

data = [10 2 3 5; 5 8 10 13; 9 7 6 1; 3 5 7 2; 4 7 5 3];
figure(2);
subplot(2,3,1), hold on, box on; 
title('bar');       
bar(data,'stacked');          
axis tight;
subplot(2,3,2), hold on, box on; 
title('bar3h');     
bar3h(data); 
axis tight;
subplot(2,3,3), hold on, box on; 
title('histogram'); 
hist(randn(1000,3));
axis tight;
subplot(2,3,4), hold on, box on; 
title('area');      
area(data);
axis tight;
subplot(2,3,5), hold on, box on; 
title('3Dpie');     
pie3(sum(data), [ 0 0 1 0]);
axis tight;
subplot(2,3,6), hold on, box on; 
title('polar histogram'); 
rose(5/3*randn(1000,1),18);
axis tight;

figure(3);
t = 0:0.1:10;
z = impulse(1,[1 1 1],t);
subplot(2,3,1), hold on, box on;
title('stairs');
stairs(t(1:5:end),z(1:5:end));
plot(t,z,'r'); 
plot([0 t(end)],[ 0 0],'k:');

theta = 2*pi*(0:63)/64;
x=cos(theta); 
y=sin(theta); 
z=abs(fft(ones(10,1),64));
axis tight;
subplot(2,3,2), hold on, box on;
title('stem3'); 
stem3(x,y,z');

[x y z] = peaks(-2:0.25:2);
[U V] = gradient(z,0.25);
axis tight;
subplot(2,3,3), hold on, box on;
title('contour & quiver'); 
set(gca,'XLim',[-2 2],'YLim',[-2 2]);
contour(x,y,z,10); 
quiver(x,y,U,V);

theta = 0:0.1:4*pi;
[x,y] = pol2cart(theta(1:5:end),theta(1:5:end));
axis tight;
subplot(2,3,4), hold on, box on;
title('polar'); 
polar(theta, theta);
axis tight;
subplot(2,3,5), hold on, box on;
title('compass'); 
compass(x,y);
axis tight;
subplot(2,3,6), hold on, box on;
title('feather'); 
feather(x(1:19),y(1:19));
axis tight;


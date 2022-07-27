%% ECE4370 Visualization of Radiation Pattern
%% Sidong Guo ECE4370 Radiation Pattern
## MAT 
%% U=sin^2(theta)
clear, clc, close all 
theta=linspace(-pi/2,pi/2);
phi=linspace(0,2*pi);
[theta,phi]=meshgrid(theta,phi);
rho=sin(theta+pi/2).*sin(theta+pi/2);
[x,y,z]=sph2cart(phi,theta,rho);
surf(x,y,z)

A=linspace(0,2*pi);
figure()
subplot(2,2,1)
polarplot(A,linspace(1,1))
title("xy plane")

subplot(2,2,2)
polarplot(A,sin(A).*sin(A));
title("xz plane")

subplot(2,2,3)
polarplot(A,sin(A).*sin(A));
title("yz plane")

%% U=sin^3(theta)
figure()
theta=linspace(-pi/2,pi/2);
phi=linspace(0,2*pi);
[theta,phi]=meshgrid(theta,phi);
rho=sin(theta+pi/2).*sin(theta+pi/2).*sin(theta+pi/2);
[x,y,z]=sph2cart(phi,theta,rho);
surf(x,y,z)

figure()
subplot(2,2,1)
polarplot(A,linspace(1,1))
title("xy plane")

subplot(2,2,2)
polarplot(A,abs(sin(A).*sin(A).*sin(A)));
title("xz plane")

subplot(2,2,3)
polarplot(A,abs(sin(A).*sin(A).*sin(A)));
title("yz plane")


%% U=sin(theta)*cos^2(phi)
figure()
theta=linspace(-pi/2,pi/2);
phi=linspace(0,2*pi);
[theta,phi]=meshgrid(theta,phi);
rho=sin(theta+pi/2).*cos(phi).*cos(phi);
[x,y,z]=sph2cart(phi,theta,rho);
surf(x,y,z)

figure()
subplot(2,2,1)
polarplot(A,cos(A).*cos(A).*sin(pi/2));
title("xy plane")

subplot(2,2,2)
polarplot(A,abs(sin(A)));
title("xz plane")

subplot(2,2,3)
polarplot(A,0);
title("yz plane")

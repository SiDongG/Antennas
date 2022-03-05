theta=-pi/2:0.01:pi/2;
phi=0:0.02:2*pi;
[theta,phi]=meshgrid(theta,phi);
rho=cos(theta).*cos(theta).*cos(3*theta).*cos(3*theta);
[x,y,z]=sph2cart(theta,phi,rho);
surf(x,y,z)
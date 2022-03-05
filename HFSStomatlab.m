clear;clc;close all;
M= csvread('2.csv');
theta=M(:,3);
theta=theta(1:360);
theta_rad=deg2rad(theta);
value=M(:,6);
value=value(1:360);
figure()
polarplot(theta_rad,value)
title('YZ plane directivity superposition')



close all
clear all
clc


%Analyitcal Problem 3.2
%Hannes Reindl
%01532129

%b)

m = 0:1000;

A = sum(cos(pi/4*m)./3.^m)
B = sum(sin(pi/4*m)./3.^m)
C = sum(cos(3*pi/4*m)./3.^m)
D = sum(sin(3*pi/4*m)./3.^m)



Phi1 = atan(-B/A)
Phi2 = atan(-D/C)

A1 = A/cos(Phi1)
A2 = C/cos(Phi2)


%c)
N = 4;

rxx =@(k) cos(pi/4*k)/2 + cos(3*pi/4*k)/2;

Rxx = toeplitz(rxx(0:N-1))

pk = @(k) A1/2 * cos(pi/4*k + Phi1) + A2/2 * cos(3*pi/4*k + Phi2);

p = pk((0:3).')


%d)

c_MSE = Rxx^(-1) * p


%f)

h_Num = [3 0];
h_Den = [3, -1];


figure
    freqz(h_Num, h_Den)
    title('Frequency response of h[n]')    
    
    
c_Num = (c_MSE.');
c_Den = 1;

figure
    freqz(c_Num,c_Den)
    title('Frequency response of c_{MSE}')


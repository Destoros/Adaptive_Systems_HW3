close all
clear all
clc

sigma_u = 1;
c = [1; -1/8];
ruu_0 = sigma_u^2;
ruu_1 = 8/9;
ruu_2 = 55/72;

Ruu = toeplitz([ruu_0, ruu_1]);

sigma_e_sq = sigma_u^2 - 2*c.'*[ruu_1; ruu_2] + c.'*Ruu*c


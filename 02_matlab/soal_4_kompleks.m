% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 4 — Bilangan Kompleks
%  ---------------------------------------------------
%  Nama  : Anjaanie Mafaaza Sahilah
%  NIM   : 2510514023
%  Parameter: N=23, a=2, b=3, K=6, theta0=75
%  Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

disp('time_stamp')
disp(datetime('now','Format','default'))

N=23; a=2; b=3; K=6; theta0=75;

%% (a) Membentuk bilangan kompleks
z1=(a+2)+(b+1)*1i;
z2=(b+1)-(a+2)*1i;

disp('z1 = ')
disp(z1)

disp('z2 = ')
disp(z2)

%% (b) Penjumlahan
z_add=z1+z2

%% (c) Perkalian
z_mul=z1*z2

%% (d) Pembagian
z_div=z1/z2

%% (e) Nilai mutlak
z_abs=abs(z1-z2)

%% (f) Akar kubik bilangan kompleks
theta_rad=deg2rad(theta0);
r=8^(1/3);

for k=0:2
    roots_complex(k+1)=r*exp(1i*((theta_rad+2*pi*k)/3));
end

%% (g) Plot pada bidang Argand
figure
compass(roots_complex)
title('Akar Kubik Bilangan Kompleks')
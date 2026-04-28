% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 1 — Eksplorasi
%  ---------------------------------------------------
%  Nama  : Anjaanie Mafaaza Sahilah
%  NIM   : 2510514023
%  Parameter: N=23, a=2, b=3, K=6, theta0=75, alpha=0.004
%  Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

disp('time_stamp')
disp(datetime('now','Format','default'))

% Parameter personalisasi
N = 23;  a = 2;  b = 3;  K = 6;
theta0 = 75;
alpha_lr = 0.004;

%% (b) Membentuk data dan menghitung statistik
for i=1:7
    D(i)=20+(K*i)+mod(a*i,7)-mod(b*i,5);
end

disp('Data penjualan:')
disp(D)

mean_D=mean(D)
median_D=median(D)
mode_D=mode(D)
range_D=range(D)
std_D=std(D,1)

%% (c) Diagram batang
figure
bar(D)
hold on
yline(mean_D,'r','LineWidth',2)

xlabel('Toko')
ylabel('Penjualan')
title('Penjualan 7 Toko')
grid on

saveas(gcf,'fig_s1_barchart.png')
% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 7 — Forecasting Penjualan
%  ---------------------------------------------------
%  Nama  : Anjaanie Mafaaza Sahilah
%  NIM   : 2510514023
%  Parameter: N=23, a=2, b=3, K=6
%  Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

disp('time_stamp')
disp(datetime('now','Format','default'))

N=23; a=2; b=3; K=6;

%% (a) Data penjualan
t=1:12;
S=50+(K*t)+((-1).^t)*(a+1);

disp('Data penjualan:')
disp(S)

%% (b) Plot data
figure
plot(t,S,'o-')
grid on
xlabel('Bulan')
ylabel('Penjualan')
title('Data Penjualan')

%% (c) Regresi linear
p=polyfit(t,S,1)

%% (d) Trend
trend=polyval(p,t);

%% (e) Prediksi bulan 13–18
future=13:18;
pred=polyval(p,future);

hold on
plot(t,trend,'r--')
plot(future,pred,'g^')

legend('Data','Trend','Prediksi')

%% (f) MAE (Mean Absolute Error)
MAE=mean(abs(S-trend))

%% (g) Analisis error
error=S-trend;

disp('Error tiap data:')
disp(error)

%% (h) Verifikasi sigma (standar deviasi error / RMSE)
sigma=sqrt(mean(error.^2))

disp('Nilai sigma:')
disp(sigma)
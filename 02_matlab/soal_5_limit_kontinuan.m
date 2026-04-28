% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 5 — Limit dan Kekontinuan
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

syms x n

%% (a) Mendefinisikan fungsi
f1=(x^2-K^2)/(x-K);

%% (b) Limit pertama
L1=limit(f1,x,K)

%% (c) Limit kedua
f2=(sqrt(x+(K+1)^2)-(K+1))/x;
L2=limit(f2,x,0)

%% (d) Limit barisan
R=(100*n+K)/(n+(a+b+1));
limit_R=limit(R,n,inf)

%% (e) Mengecek kekontinuan
limit_left=limit(f1,x,K,'left')
limit_right=limit(f1,x,K,'right')

%% (f) Nilai limit fungsi di x = K
nilai_f = limit(f1,x,K)

%% (g) Plot fungsi
figure
fplot(f1,[0 K])
hold on
fplot(2*x+1,[K 2*K])
xline(K)

grid on
title('Grafik fungsi limit')
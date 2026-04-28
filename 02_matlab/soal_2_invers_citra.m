% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 2 — Invers Matriks dan Enkripsi Citra
%  ---------------------------------------------------
%  Nama  : Anjaanie Mafaaza Sahilah
%  NIM   : 2510514023
%  Parameter: N=23, a=2, b=3
%  Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

disp('time_stamp')
disp(datetime('now','Format','default'))

% Parameter personalisasi
N = 23; 
a = 2; 
b = 3;

%% (a) Membentuk matriks kunci A
A = [a+1  b    2;
     1    a+2  b;
     b    1    a+3];

disp('Matriks A:')
disp(A)

%% (b) Menghitung determinan matriks A
det_A = det(A)

%% (c) Menghitung invers matriks A
A_inv = inv(A);

disp('Invers matriks A:')
disp(A_inv)

%% (d) Membentuk matriks citra P dan melakukan enkripsi
P = [120 (50+N) 200;
     80  (a+2)  (10+N);
     (30+N) 90  170];

disp('Matriks citra asli P:')
disp(P)

E = A * P;

disp('Matriks hasil enkripsi E:')
disp(E)

%% (e) Dekripsi citra
P_recover = A_inv * E;

disp('Hasil dekripsi (harus sama dengan P):')
disp(P_recover)

%% (f) Visualisasi citra
figure

subplot(1,2,1)
imshow(P,[])
title('Citra Asli')

subplot(1,2,2)
imshow(E,[])
title('Citra Setelah Enkripsi')
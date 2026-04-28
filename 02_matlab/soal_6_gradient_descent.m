% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 6 — Optimasi Gradient Descent
%  ---------------------------------------------------
%  Nama  : Anjaanie Mafaaza Sahilah
%  NIM   : 2510514023
%  Parameter: N=23, a=2, b=3, K=6, alpha=0.004
%  Tanggal: 2026-04-28
% =====================================================

clc; clear; close all;

disp('time_stamp')
disp(datetime('now','Format','default'))

N=23; a=2; b=3; K=6;
alpha=0.004;

%% (a) Fungsi profit
pi = @(x) -(a+1)*x.^3+(b+5)*K*x.^2+100*x-(K^2*10);

%% (b) Turunan fungsi
dpi = @(x) -3*(a+1)*x.^2+2*(b+5)*K*x+100;

%% (c) Inisialisasi
x=1;
iter=500;

%% (d) Gradient Descent
for k=1:iter
    x=x+alpha*dpi(x);
    p1(k)=pi(x);
end

%% Menampilkan hasil akhir
disp('Nilai x optimal:')
disp(x)

disp('Profit maksimum:')
disp(pi(x))

%% (e) Plot konvergensi
figure
plot(p1)
title('Konvergensi Gradient Descent')
xlabel('Iterasi')
ylabel('Profit')

%% (f) Perbandingan learning rate
alpha2=alpha*10;
alpha3=alpha*0.1;

x1=1; x2=1; x3=1;

for k=1:iter

    x1=x1+alpha*dpi(x1);
    x2=x2+alpha2*dpi(x2);
    x3=x3+alpha3*dpi(x3);

    y1(k)=pi(x1);
    y2(k)=pi(x2);
    y3(k)=pi(x3);

end

figure
plot(y1)
hold on
plot(y2)
plot(y3)

legend('alpha','10alpha','0.1alpha')
title('Perbandingan Learning Rate')
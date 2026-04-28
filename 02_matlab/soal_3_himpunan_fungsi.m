% =====================================================
%  UTS Matematika Sains Data — Semester Genap 2025/2026
%  Soal 3 — Himpunan dan Fungsi
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

%% (a) Membentuk himpunan
A=[N N+2 N+4 N+7 N+10 N+13 N+15];
B=[N+3 N+5 N+7 N+10 N+12 N+18];
C=[N+1 N+7 N+10 N+11 N+17 N+20];

U=N:(N+20);

%% (b) Union dan Intersection
union_AB=union(A,B)
intersect_AB=intersect(A,B)

%% (c) Operasi himpunan lain
AB=union(A,B);
C_comp=setdiff(U,C);

hasil=intersect(AB,C_comp)

%% (d) Selisih simetris
sym_diff=setxor(A,B)

%% (e) Fungsi
syms x

f=K*x+(a+b);
g=(x^2)/(b+1)+a;

%% (f) Komposisi fungsi
fog=simplify(subs(f,x,g))
gof=simplify(subs(g,x,f))
clc; clear all; close all;

%% aproximación inicial dada por el problema
x0 = 0;

%% Iteración 1
xr =  0 - (f(0)/f_prima(0));
% xr = 0.5000
%% Determinación del error ea
es = abs((0.5000 - 0) / 0.5000) * 100;
% es = 100

%% Iteración 2
xr = 0.5000 - (f(0.5000)/f_prima(0.5000));
% xr = 0.5663
%% Determinación del error ea
es = abs((0.5663 - 0.5000) / 0.5663) * 100;
% es = 11.708

%% Iteración 3
xr = 0.5663 - (f(0.5663)/f_prima(0.5663));
% xr = 0.5671
%% Determinacion del error ea
es = abs((0.5671 - 0.5663) / 0.5671) * 100;
% es = 0.1411

%% Iteración 4
xr = 0.5671 - (f(0.5671)/f_prima(0.5671));
%% xr = 0.5671
%% Determinacion del error ea
es = abs((0.5671 - 0.5671) / 0.5671) * 100
% es = 0




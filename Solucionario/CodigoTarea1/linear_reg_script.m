%function ReadAndRunLinearRegresion
clear all;
close all;
clc;
data = load('../../PrimeraSemana/Datos/univariate_reg_data.txt');
X = data(:, 1); y = data(:, 2);

X = (X - min(X)) / ( max(X) - min(X) ); % para normalizar.
size(X);
size(y);

%Variar alpha con: 0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1, 1.3, 2, 3
gradient_descent_one_var(X, y, 0.001, 1000);


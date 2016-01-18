%function ReadAndRunLinearRegresion
clear all;
close all;
clc;
data = load('../../Datos/univariate_reg_data.txt');
X = data(:, 1); y = data(:, 2);

hold on;
X = (X - min(X)) / ( max(X) - min(X) ); % para normalizar.
size(X)
size(y)
gradient_descent_one_var(X, y, 0.5, 600);

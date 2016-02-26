%function ReadAndRunLinearRegresion
clear all;
close all;
clc;
data = load('../../PrimeraSemana/Datos/univariate_reg_data.txt');
X = data(:, 1); y = data(:, 2);

X = (X - min(X)) / ( max(X) - min(X) ); % para normalizar.
size(X);
size(y);

%0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1, 1.3, 2, 3
%gradient_descent_one_var(X, y, 3, 1000);
poly_degree = 15;
is_inverse = false;
lambda = 1;
theta_grad = Gradient_descent_mul_var(X, y, 1.7, 1000, poly_degree, is_inverse, lambda);
theta_fn = FuncionNormal(X, y, poly_degree, is_inverse, lambda);
fprintf('Parametros Theta computados:\n');
fprintf('- Por Gradient Descent: \n ');
fprintf( '\t%f\n', theta_grad);

fprintf('\n');

fprintf('- Por Ecuacion Normal: \n ');
fprintf( '\t%f\n', theta_fn);
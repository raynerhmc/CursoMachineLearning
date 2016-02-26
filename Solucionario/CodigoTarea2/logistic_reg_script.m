clear all;
close all;
clc;
%%%%%%% Load Data
%  The first two columns contains the X values and the third column
%  contains the label (y).

data = load('../../PrimeraSemana/Datos/circulo_dos_clases.txt');
X = data(:, [1, 2]); y = data(:, 3);

%  normalizando x1 y x2.
X(:,1) = (X(:,1) - min(X(:,1))) / ( max(X(:,1)) - min(X(:,1)) ); 
X(:,2) = (X(:,2) - min(X(:,2))) / ( max(X(:,2)) - min(X(:,2)) ); 


plotData(X, y);

% Put some labels 
hold on;

% Labels and Legend
xlabel('Variable x1')
ylabel('Variable x2')

% Specified in plot order
legend('y = 1', 'y = 0')
hold off;

% Add Polynomial Features

% Note that mapFeature also adds a column of ones for us, so the intercept
% term is handled
degree = 10;
X = mapFeature(X(:,1), X(:,2),degree);
size(X)

% Initialize fitting parameters
initial_theta = zeros(size(X, 2), 1);

alpha = 1.3;
num_iters = 400000;

[Theta, Jcost] = GradientDescentInLogisticReg(X, y, alpha, num_iters);

%Print theta to screen
%fprintf('Cost at theta found by fminunc: %f\n', Jcost);
fprintf('theta: \n');
fprintf(' %f \n', Theta);

% Plot Boundary
close all;
plotDecisionBoundary(Theta, X, y, degree);




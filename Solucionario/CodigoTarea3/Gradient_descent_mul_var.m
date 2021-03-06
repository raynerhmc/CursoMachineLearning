% MATLAB CODE
% Gradient descent para regresion lineal de multiples variables y regresion polinomica.
% - X: matriz de m x n, donde m = ejemplos de entrenamiento y n = numero de variables.
% - y: variable de salida,  es un vector de m x 1 elementos.
% - alpha: parametro positivo y es aconsejable que sea menor a 1.
% - num_iters: numero de iteraciones que realizara el algoritmo gradient
% descent
% - poly_degree: Maximo grado de polinomio que sera utilizado por las
% variables, ejemplo -> si poly_degree = 3 y n = 1 entonces 
% h_theta = theta0 + x1 * theta1 + x1^2 * theta2 + x1^3 * theta3
% - is_inverse: variable logica (true o false) para invertir el efecto de
% poly_degree, ejemplo -> si poly_degree = 3 y n = 1 entonces
% h_theta = theta0 + x1 * theta1 + x1^(1/2) * theta2 + x1^(1/3) * theta3
   
function Theta = Gradient_descent_mul_var(X, y, alpha, num_iters, poly_degree, is_inverse, lambda)
n = size(X, 2); % Numero de variables
m = length(y); % Numero de ejemplos de entrenamiento
%[X, y] = SortModelIfOneVariable(X, y);
X = composeX_norm(X, poly_degree, is_inverse); % llenando la matriz X con X0 y los terminos polinomiales
Theta = zeros(size(X, 2), 1); % Almacena los valores finales de los parametros Theta
J_history = zeros(1, num_iters); % Almacena el historico de la funcion costo J

for iter = 1:num_iters
    %%%%%%%%%% PLOTING THE GRAPH%%%%%%%%%%
    %%%%%%% Funciona cuando solo existe una variable %%%%%%
%     if n == 1
%         if mod( iter - 1, 500 ) == 0 
%             TestX = [0:0.0001:1]';
%             TestX = composeX_norm(TestX, poly_degree); 
%             h_y = TestX * Theta;
%             %[TestX(:,2), h_y];
%             plot(X(:,2), y, '*');
%             hold on;
%             plot(TestX(:,2), h_y, 'r');
%             hold off;
%             pause();
%         end
%     end
    %%%%%%% END OF PLOTING %%%%%%
    
    J_history(iter) = ( 1 / ( 2 * m ) ) * ( X * Theta - y )' * ( X * Theta - y ) + ...
                        lambda * ( Theta(2:end,1)' * Theta(2:end,1) );
    Theta = (Theta * ( 1 - (alpha * lambda) / m ) ) - alpha * (1 / m ) * (( X * Theta - y )' * X)';
    %disp(Theta);
end

set(gca,'fontsize',16) 
plot (1:num_iters, J_history);
xlabel('Num iteraciones','FontSize',19,'FontWeight','bold') % x-axis label
ylabel('Funcion Costo (J)','FontSize',19,'FontWeight','bold') % y-axis label

TestX = [0:0.0001:1]';
TestX = composeX_norm(TestX, poly_degree, is_inverse); 
h_y = TestX * Theta;
figure, plot(X(:,2), y, '*');
hold on;
plot(TestX(:,2), h_y, 'r');
hold off;


function X = composeX_norm( X, poly_degree, is_inverse )
m = size(X, 1);
n = size(X, 2);
for i_var = 1:n
    for degree = 2:poly_degree
        TempX = X(:,i_var) .^ degree;
        if is_inverse == true
            TempX = X(:, i_var) .^ (1.0 / degree); 
        end
        TempX = (TempX - min(TempX) ) / ( max(TempX) - min(TempX) ); % para normalizar.
        X = [X, TempX];
    end
end
X = [ones(m, 1), X];



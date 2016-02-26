function Theta = FuncionNormal(X, y, poly_degree, is_inverse, lambda)
X = composeX_norm(X, poly_degree, is_inverse); % llenando la matriz X con X0 y los terminos polinomiales
n = size(X, 2);
identity = eye(n);
identity(1,1) = 0;
Theta = pinv( X'*X + lambda * identity ) * X' *y;



TestX = [0:0.0001:1]';
TestX = composeX_norm(TestX, poly_degree, is_inverse); 
h_y = TestX * Theta;
figure,
set(gca,'fontsize',16)
plot(X(:,2), y, '*');
hold on;
plot(TestX(:,2), h_y, 'r');
hold off;
axis([-inf inf -6.5 32])
xlabel('x','FontSize',19,'FontWeight','bold') % x-axis label
ylabel('y','FontSize',19,'FontWeight','bold') % y-axis label

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
function Theta = FuncionNormal(X, y, poly_degree, is_inverse)
X = composeX_norm(X, poly_degree, is_inverse); % llenando la matriz X con X0 y los terminos polinomiales
Theta = pinv( X'*X ) * X' *y;



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
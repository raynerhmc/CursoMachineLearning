
    % MATLAB CODE
    % Usar el archivo ex1data1.txt, utilizando la funcion load(ex1data1.txt) para cargar x, y.
    % Gradient descent para regresion lineal de una variable.
    % la variable de entrada x, asi como la variable de salida y deben estar normalizadas en el rango de [0 - 1].
    % El parametro alpha debe ser positivo y es aconsejable que sea menor a 1.
    
    function gradient_descent_one_var(x, y, alpha, num_iters)
    m = length(x); % numero de ejemplos de entrenamiento
    
    %Para la hipotesis: h_theta = theta_0 + theta_1 * x.
    theta_0 = 0;  
    theta_1 = 0;
    historial_J = zeros(1, num_iters);
    for iter = 1:num_iters        
        % Variables auxiliares donde se almacena el valor de las derivadas parciales de la funcion costo.
        sum_0 = 0;
        sum_1 = 0;
        sum_square = 0;
        for i = 1:m
            h_theta = theta_0  + theta_1 * x(i);
            sum_0 = sum_0 + ( h_theta - y(i) );
            sum_1 = sum_1 + ( ( h_theta - y(i) ) * x(i) ); 
            sum_square = sum_square + ( ( h_theta - y(i) ) ^ 2 );
        end
        % Actualizacion simultanea de los parametros theta_0 y theta_1
        theta_0 = theta_0 - alpha * ( 1.0 / m ) * sum_0;
        theta_1 = theta_1 - alpha * ( 1.0 / m ) * sum_1;
        historial_J(iter) = (1.0 / (2 * m) ) * sum_square;
    end
    set(gca,'fontsize',16)
    plot(x, y, '*');
    xlabel('x','FontSize',19,'FontWeight','bold') % x-axis label
    ylabel('y','FontSize',19,'FontWeight','bold') % y-axis label
    hold on;
    h_y = theta_0 + theta_1 * x;
    plot(x, h_y, 'r');
    
    figure,
    set(gca,'fontsize',16)
    plot(1:num_iters, historial_J,'LineWidth',2);
    xlabel('Numero de iteraciones','FontSize',19,'FontWeight','bold') % x-axis label
    ylabel('Funcion Costo (J)','FontSize',19,'FontWeight','bold') % y-axis label
    historial_J(1000)
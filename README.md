# Curso Machine Learning

Número de horas de teoria: 18 

Número de horas por semana: 6

Horario de clases: Lunes, miercoles y viernes de 11:30 a 13:00 hrs.

----> IMPORTANTE: La evaluación será hecha por un quiz semanal y de 2 a 3 pequeñas tareas semanales.

#Primera Tarea: 

a) Crear una variable llamada 'historial_J' que almacene en cada iteración del algoritmo Gradient Descent  el valor de la Función Costo.

b) Para valores de alpha = 0.001, 0.003, 0.01, 0.03, 0.1, 0.3, 1, 1.3, 2, 3. Hacer un gráfico   ( iter, J )  donde se plotee el valor de la Función Costo (J) en la i-ésima iteración (Iter). El máximo número de iteraciones será de 1000.

Pregunta: Cuál valor de alpha cree usted que consigue converger más rápido? 


# Segunda Tarea:

a) Implementar la Función Normal y probarlo en el archivo PrimeraSemana/Datos/univariate_reg_data.txt de este github, y ver que los parámetros Theta obtenidos son iguales a los obtenidos por el algoritmo Gradient Descent para las siguientes funciones hipótesis:

h(Theta) = theta_0 + x_1 * theta_1;

h(Theta) = theta_0 + x_1 * theta_1 + (x_1 ^ 2) * theta_2; 

h(Theta) = theta_0 + x_1 * theta_1 + (x_1 ^ 2) * theta_2; + (x_1 ^ 3) * theta_3;

h(Theta) = theta_0 + x_1 * theta_1 + sqrt(x_1) * theta_2;

Para hallar la inversa de la matriz en Matlab/octave/python/R, utlizar la función  'pinv', la cual calcula evita errores de no invertivilidad de matrices. 

Para cada hipotesis mostrar en una tabla los parámetros Theta obtenidos por el algoritmo gradient Descent en comparación con los obtenidos por la Función Normal.

b) En regresión logística, analizar el archivo PrimeraSemana/Datos/circulo_dos_clases.txt de este github. El cual contine 118 casos de entrenamiento, cada uno compuesto por dos variables (o características) de entrada y una variable binaria de salida {0, 1}.
Probar distintas hipotesis, e encontrar aquella que mejores resultados da. (Mostrar por lo menos el grafico de 3 distintas hipotesis) 

Pregunta 1: A mas variables en la función hipótesis, mayor número de iteraciones debe dar el algoritmo para converger? Considerando que en todas ellas se utiliza el mismo alfa.

Pregunta 2: Cree usted que se puede usar la función normal en la regresion logística?
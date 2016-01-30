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

# [FINALIZADO] Ya no se puede enviar mas la tarea 1 y 2.

# Tercera Tarea [OPCIONAL]:
Consiste en probar la regularización con un parámetro  muy pequeño, normal, muy grande  en los mismos archivos de datos de la tarea 1 y 2. 

Que sucede cuando tenemos un lambda muy pequeño?, y con uno muy grande?. Mostrar los graficos de regresion lineal  y regresion logistica ( frontera de decisión) obtenidos.

# Cuarta Tarea:
a) En la carpeta SegundaSemana/Codigo/Matlab Se encuentra el código de redes neuronales, pertenece a un ejercicio de programación de  Andrew Ng (http://www.andrewng.org/). El mismo se encuentra casi resuelto. El archivo principal esta en el archivo ex4.m, el cual está dividido por una série de pasos. 

Su tarea  en implementar el paso 8 (Implement Regularization). Que consiste en modificar el archivo nnCostFunction.m (donde se implementa el algoritmo back Propagation y se obtiene la función Costo ) y agregarle el término de regularización a las variables Theta1_grad(:) y Theta2_grad(:). La fórmula de ese término se encuentra en la última diapositiva del archivo: "SegundaSemana/Contenido/1-Redes Neuronales.pdf"

El código está bien documentado y en ex4.pdf está descrito lo que hace cada función especificamente. Y dá ayudas para obtener una correcta implementación.

Algunas cosas que quiero aclarar  son las siguientes: 
 - Para probar si su regularización esta bien hecha, 
 - El archivo  fmincg.m   contiene un algoritmo similar al Gradient Descent que  utiliza la función nnCostFunction.m, lo que devuelve esta función obviamente son los pesos Theta optimos que minimizan la función Costo (J).
 - Como lo dije en clases, al Gradient Descent u otros algoritmos de optimización similares solo les interesa la versión linearizada de los pesos Theta con sus respectivas gradientes. Por lo tanto, en casi todo el código se trabaja de esa forma. Por otro lado el algoritmo Back Propagation (implementado en nnCostFunction.m) utiliza una versión matricial de los pesos Theta, por lo que al inicio de esa función aparece el método 'reshape', que recibe una version linearizada y lo transforma a su forma matricial. Finalmente esa misma función retorna los gradientes de THeta linearizados.
 - Nuevamente mas informaciones en el archivo ex4.pdf.
 - Entiendan el código antes de hacer alguna cosa. 


b) Implementar el paso 12 (70% training, 30% testing) y 13 (Cross Validation) en ex4.m.  En el mismo archicvo ex4.m se detalla lo que tiene que ser hecho. 

Hacer un relatorio para la tarea a) y b) escribiendo al menos el código utilizado, y para b) la exactitud( accuracy) obtenida.

c) [Opcional] Para el paso 13 crear una matriz de confusión. Y responder la pregunta: Que clase (1-10) es la que falla mas veces?.

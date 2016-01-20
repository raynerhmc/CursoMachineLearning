import matplotlib.pyplot as plt
def GradientDescentOneVar(x, y, alpha, max_iter):

    m = len(y)
    theta_0 = 0
    theta_1 = 0
    print(m, ' ', theta_0, ' ' , theta_1)

    for iter_id in range(1,max_iter):
        sum_0 = 0;
        sum_1 = 0;
        for i in range(0, m - 1):
            h_theta = theta_0 + theta_1 * x[i]
            sum_0 = sum_0 + ( h_theta - y[i] )
            sum_1 = sum_1 + ( ( h_theta - y[i] ) * x[i] );
        theta_0 = theta_0 - alpha * (1.0 / m) * sum_0;
        theta_1 = theta_1 - alpha * (1.0 / m) * sum_1;
            
        
    h_y = theta_0 + theta_1 * x;
    

def main():
    x = [0,1, 2, 3, 4]
    y = [3, 4, 2, 3, 4]
    alpha = 0.5
    max_iter = 100
    GradientDescentOneVar(x, y, alpha, max_iter)

main()
    

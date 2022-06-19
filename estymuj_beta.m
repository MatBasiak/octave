function beta = esymuj_beta(X,Y)
    n=rows(X);
    beta_0 = rand();
    beta_1 = rand();
    beta=[beta_1;beta_0]
    wspolczynnik_uczenia=0.01;
    for i =1:1000
      Y_hat = policz_wartosc(X,beta)
      gradient_beta_0=(-2/n)*sum(Y-Y_hat)
      gradient_beta_1=(-2/n)*sum((Y-Y_hat).*X(:,1));
      beta_0 -=wspolczynnik_uczenia*gradient_beta_0;
      beta_1 -=wspolczynnik_uczenia*gradient_beta_1;
      beta=[beta_1;beta_0]
    endfor
    
end
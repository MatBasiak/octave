ile_danych = 50;
X = [rand(ile_danych, 1)*10, repmat([1] , ile_danych ,1)]
znany_beta = [3;5] ;
Y = X*znany_beta + randn(ile_danych, 1)
[X_train,X_test,Y_train,Y_test] = train_test_split(X,Y)

beta_hat = ols(X, Y) ;
y_train_hat = X_train * beta_hat;
y_test_hat = X_test * beta_hat;

wartosc_mse_train=mse(Y_train,Y_train_hat)
wartosc_mse_test =mse(Y_test,Y_test_hat)


X_linspace = linspace (0,10,1000);
Y_idealne = [X_linspace' ,repmat([1], 1000,1)]*znany_beta;
Y_oszacowana = [X_linspace', repmat([1],1000,1)]*beta_hat;
hold on
plot(X(:,1) , Y , 'o')
plot(X_linspace,Y_idealne, 'r--')
plot(X_linspace,Y_oszacowana, 'g--')

legend('dane wejsciowe','idealne dopsaowanie','oszacowane dopasowanie')







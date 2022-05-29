data = csvread("Boston.csv");
X = data(:,2:14)
Y = data(:,15)



beta_hat = ols(X,Y)




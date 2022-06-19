function W = init_network(X,Y)
  n_row = columns(X)+1
  n_col = columns(Y) 
  W = rand[n_row,n_col]

end
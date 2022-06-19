function Y = feed_forward(X,W)
  n_rows= rows(X)
  X=[X,repmat([1],n_rows)]
  A = X*W
  Y =logistic(A) - logistic to funkcja aktywacji zaimplementowana w innym pliku
End

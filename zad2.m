punkt_startowy = rand()-0.5
wartosc_w_punkcie_startowym = sin(punkt_startowy);
punkt = punkt_startowy
wsp_uczenia = 0.001

for i=1:300
 gradient = 3*punkt^2 +2*punkt;
 punkt -= wsp_uczenia *gradient; 
 
end

punkt
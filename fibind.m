% Index number of the first fibonacci number with n digits
function ind=fibind(n)
phi=(1+sqrt(5))/2;
ind=ceil((n-1+log10(5)/2)/log10(phi));
end
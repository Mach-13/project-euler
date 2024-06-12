% Number of digits in the nth fibonacci number
function dig=fibdig(n)
phi=(1+sqrt(5))/2;
dig=ceil(log10((phi^n-(-phi)^-n)/sqrt(5)));
end
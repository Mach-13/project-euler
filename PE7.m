%Project Euler Problem 7
%Find the nth prime number

n=input('Enter n: ');
i=1;

while all(length(primes(i))<n)
    i=i+1;
end

p=primes(i);
nthp=p(:,n);

disp(nthp)
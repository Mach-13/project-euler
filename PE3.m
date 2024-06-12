%Project Euler Problem 3
%Find the largest prime factor of n

n=input('Enter n: ');

%factor(n) returns a vector containing all the prime factors of n
p=factor(n);

max=p(:,length(p));

disp(max)
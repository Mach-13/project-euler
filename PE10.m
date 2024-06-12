%Project Euler Problem 10
%Sum of prime numbers below 2 million.

p=primes(2000000);
sum=0;
for i=1:length(p)
    sum=sum+p(i);
end

strsum=num2str(sum);
fprintf('sum = %s\n',strsum)
%Project Euler Problem 27
%Find a,b such that n^2+a*n+b with |a|<1000,|b|<=1000 produces the maximum
%number of primes for consecutive n>=0

clear
addpath '/Users/mmtakeda/Desktop/MATLAB'

max_p=0;
for a=-999:999
    for b=-1000:1000
        primes=[];
        n=0;
        while dsum(n^2+a*n+b)==1
            n=n+1;
        end
        if n>max_p
            max_p=n;
            max_a=a;
            max_b=b;
        end
    end
end

fprintf('a=%d and b=%d\n',max_a,max_b)
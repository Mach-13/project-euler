%Project Euler Problem 2
%Find the sum of even fibanacci numbers under a maximum

maxfib=input('Enter the max: ');

sum=0;
n=1;
while all(fibonacci(n)<=maxfib)
    if fibonacci(n)/2==floor(fibonacci(n)/2)
    sum=sum+fibonacci(n);
    end
    n=n+1;
end

disp(sum)
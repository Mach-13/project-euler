%Project Euler Problem 25
%Find the first fibonacci number containing n digits digits

clear
addpath '/Users/mmtakeda/Desktop/MATLAB'


n=input('Enter the number of digits: ');

if (n<=309)&&(n>3)
    f1=1;
    f2=1;
    fib=[f1 f2];
    i=3;
    while length(sprintf('%.0f',fib(i-1)))~=n
        fib(i)=fib(i-1)+fib(i-2);
        i=i+1;
    end
    fprintf('The first fibonacci number with %d digits\n',n)
    fprintf('Fibonacci number: %d\n',fib(i-1))
    fprintf('Index number: %d\n',i-1)
%Binet Formula
elseif n>309
    index=fibind(n);
    fprintf('The first fibonacci number with %d digits\n',n)
    fprintf('Fibonacci number: approx. inf.\n')
    fprintf('Index number: %d\n',index)
else
    disp('error')
end
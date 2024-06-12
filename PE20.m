%Project Euler Problem 20
%Find the sum of digits in 100!

clear

s=sprintf('%.0f',factorial(100));

sum=0;
for i=1:length(s)
    sum=sum+str2double(s(i));
end

fprintf('The sum of the digits of 100! is %d\n',sum)
%Project Euler Problem 16
%Sum of the digits of the number 2^1000

clear

n=sprintf('%.0f',2^1000);

sum=0;
for i=1:length(n)
    sum=sum+str2num(n(i));
end

fprintf('The sum of the digits of 2^1000 is %d\n',sum)
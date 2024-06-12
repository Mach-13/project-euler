%Project Euler Problem 6
%Difference of the sum of the squares and the squared of the sum of the
%first n numbers

n=input('Enter n: ');

squared=0;
sum=0;

for i=1:n
    squared=squared+i^2;
    sum=sum+i;
end

dif=sum^2-squared;
disp(dif)
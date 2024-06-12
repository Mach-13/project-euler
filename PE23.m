%Project Euler Problem 23
%Find the sum of all the positive integer which cannot be written as the
%sum of two abundant numbers.

%Integer n is perfect if the sum of its proper divisors is equal to itself
%     //      deficient if the sum is less than n
%     //      abundant if the sum is greater than n

%All integers >28123 can be writen as the sum of two abundant numbers

clear
addpath '/Users/mmtakeda/Desktop/MATLAB'

%Find all the abundant numbers under 28123
abundant=zeros(1,6965);
a=1;
for i=1:28123
    if dsum(i)>i
        abundant(a)=i;
        a=a+1;
    end
end

mat=zeros(6965);
for i=1:length(abundant)
    for j=1:length(abundant)
        mat(i,j)=abundant(i)+abundant(j);
    end
end

non_ab_sum=0;
for n=1:28123
    if ismember(n,mat)==0
        non_ab_sum=non_ab_sum+n;
    end
end

fprintf('The sum of all the positive integers which cannot be wrtten as ')
fprintf('the sum of two abundant numbers is:\n%d\n',non_ab_sum)
%Takes long time to complete

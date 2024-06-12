%Project Euler Problem 21
%Find the sum of all the amicable numbers under 10000
%Amicable numbers are two numbers a,b such that dsum(a)=b,dsum(b)=a
%Also a~=b, which means a~=dsum(a) or b~=dsum(b)

clear
addpath '/Users/mmtakeda/Desktop/MATLAB'

ami=[];
amicable=[];
for i=1:10000
    if (dsum(dsum(i))==i)&&(i~=dsum(i))
        ami=[ami,i];
        amicable=[amicable;i,dsum(i)];
    end
end

fprintf('The sum of all the amicable numbers under 10000 is ')
fprintf('%d\n',sum(ami))
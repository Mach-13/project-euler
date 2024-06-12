%Project Euler Problem 19
%Find how many Sundays fell on the first of the month in 20th century

%28 days-Feb (29 days on years divisible by 4)
%30 days-Apr, Jun, Sep, Nov
%31 days-Jan, Mar, May, Jul, Aug, Oct, Dec
%Jan 1 1900 was Monday, so Jan 1 1901 must be Sunday

%In a century, there are 24 leap years (every 4 years)
%Since 2000 in divisible by 400, 20the century had 25 leap years

%Number of days in each month
yr=[31,28,31,30,31,30,31,31,30,31,30,31];
lyr=yr;
lyr(2)=29;
cent=[];
for i=1:100
    if rem(i,4)==0
        cent=[cent,lyr];
    else
        cent=[cent,yr];
    end
end

%First day of each month in terms of integers
%Let 1-Sun, 2-Mon, 3-Tues, 4-Wed, 5-Thur, 6-Fri, 7-Sat
%Each plus 7n, for some integer n
cen_first=zeros(1,1200);
cen_first(1)=1;
for i=2:1200
    cen_first(i)=cen_first(i-1)+cent(i-1);
end

%Count the number of Sundays (multiples of 7) in cen_first
count=0;
for i=1:1200
    if rem(cen_first(i)-1,7)==0
        count=count+1;
    end
end

fprintf('The number of Sundays that fell on the fist day of the month\n')
fprintf('in the 20th century was %d\n',count)
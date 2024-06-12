%Project Euler Problem 1
%Find the sum of all the multipliers of 3 and 5 under 1000.

sum_3=0;
for i=1:999
    div_3=i/3;
    if floor(div_3)==div_3
        sum_3=sum_3+i;
    end
end

sum_5=0;
for i=1:999
    div_5=i/5;
    if floor(div_5)==div_5
        sum_5=sum_5+i;
    end
end

sum_3_5=0;
for i=1:999
    div_3_5=i/15;
    if floor(div_3_5)==div_3_5
        sum_3_5=sum_3_5+i;
    end
end

sum=sum_3+sum_5-sum_3_5;
disp(sum)
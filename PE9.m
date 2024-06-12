%Project Euler Problem 9
%Find a product of a Pythagorean Triplet for which a+b+c=1000

for a=1:1000
    for b=1:1000
        c=sqrt(a^2+b^2);
        if (a+b+c==1000)&&(a<b)&&(b<c)
            fprintf(' a = %d\n b = %d\n c = %d\n',a,b,c)
            fprintf(' abc = %d\n',a*b*c)
        end
    end
end


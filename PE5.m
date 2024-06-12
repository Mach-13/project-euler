%Project Euler Problem 5
%Smallest value divisible by all numbers from 1 to 20

n=20;

while all(isequal(n./(1:20),floor(n./(1:20)))==0)  %#ok<COMPNOT>
    for i=2:20
        d=n/i;
        if floor(d)~=d
            n=n+20;
            break
        end
    end
end

disp(n)
%Project Euler Probelm 14
%Find a number (under one million) with the longest Collatz sequence

max=0;

for n=1:1000000
    mat=n;
    while n~=1
        if rem(n,2)==0
            m=n/2;
        elseif rem(n,2)==1
            m=3*n+1;
        end
        mat=[mat,m];
        n=m;
    end
    if length(mat)>max
        max=length(mat);
        n_max=mat(1);
    end
end

fprintf('An integer (<1000000) with the longest Collatz sequence is ')
fprintf('%d\n',n_max)

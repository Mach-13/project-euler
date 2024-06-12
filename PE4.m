%Project Euler Problem 4
%Find the largest palindrome number made from the product of two 3-digits.

k=0;

for i=899:-1:1
    for j=899:-1:1
        n=(100+i)*(100+j);
        N=num2str(n);
        if N(:,1)==N(:,length(N))&&N(:,2)==N(:,length(N)-1)&&N(:,3)==N(:,length(N)-2)&&n>k
            M=n;
            k=n;
        end
    end
end

disp(M)
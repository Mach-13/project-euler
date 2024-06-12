%Project Euler Problem 12
%Find first triangle number to have more than 500 divisors
%Takes long time to run

clear

%Base case
n=1;
divnum=1;

%Iteration
while divnum<500
    n=n+1;
    divvec=[];
    trinum=sum(1:n);
    for i=1:trinum
        if rem(trinum,i)==0
            divvec=[divvec,i];
            divnum=length(divvec);
        end
    end
end

fprintf('The first triangle number to have over 500 divisors is ')
fprintf('%d\n',trinum)
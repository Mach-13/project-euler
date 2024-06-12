% Sum of all the proper divisors of n (excludes n)
function sumdiv=dsum(n)
sumdiv=0;
for i=1:n-1
    if rem(n,i)==0
        sumdiv=sumdiv+i;
    end
end
end
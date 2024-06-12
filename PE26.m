%Project Euler Problem 26
%Find d<1000 for which 1/d contains the longest recurring cycle

clear

%Find decimals for d=1:1000
dec=cell(1,1000);
seq=cell(1,1000);
for i=1:1000
    vec=[];
    dec{i}=char(vpa(1/i,1000));
    %Turn decimal values into vectors
    for j=3:length(dec{i})
        vec=[vec str2double(dec{i}(j))];
        seq{i}=vec;
    end
end

%Find the period of recurring cycle
a=1;
for i=1:1000
    if length(seq{i})>=1000
        long{1,a}=i;
        long{2,a}=seq{i};
        a=a+1;
    end
end

per=cell(10,length(long));
cyc=zeros(1,length(long));
for i=1:length(long)
    period=0;
    for j=1:10
        per{j,i}=seqperiod(long{2,i}(j:length(long{2,i})));
        if (per{j,i}>period)&&(per{j,i}<990)
            period=per{j,i};
            cyc(i)=period;
        end
    end
end

%Find the d value with longest recurring cycle
longest=max(cyc);
for i=1:length(cyc)
    if cyc(i)==longest
        ind=long{1,i};
    end
end

fprintf('The longest recurring cycle in a decimal 1/d with d<1000 is:\n')
fprintf('%d-digits with d=%d\n',longest,ind)

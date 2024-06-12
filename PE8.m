%Project Euler Problem 8
%Find the largest product of 13 adjacent digits from the series given

fid=fopen('PE8.txt');

series=textscan(fid,'%1u');

series_mat=cell2mat(series);

s=num2str(series_mat);

k=0;

for i=1:(length(s)-13)
    v=str2num(s(i:i+12));  %#ok<ST2NM>
    p=prod(v);
    if p>k
        m=p;
        k=p;
    end
end

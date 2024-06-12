%Project Euler Problem 13
%Find the first ten digits of the sum of 50-digit integers

clear

fid=fopen('PE13.txt');
n=textscan(fid,'%1u');
m=cell2mat(n);
s=num2str(m);

mat=[];
for i=0:99
    mat=[mat;s((50*i+1):(50*i+50))'];
end

digits=str2num(mat);

sum=sum(digits);
sum_str=num2str(sum);
disp(sum_str(1:11))
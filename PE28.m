%Project Euler Problem 28
%Find the sum of the diagonal numbers in a 1001-by-1001 spiral
%if 1 is placed in the middle, 2 to the right, and spirals clockwise

clear

vec=3:1001^2;

ind=1:2:999;
mat=ones(length(ind),4);
for i=1:length(ind)
    mat(i,:)=mat(i,:)*ind(i);
end

diag_bet=[];
for i=1:length(mat)
    diag_bet=[diag_bet mat(i,:)];
end
diag_bet=diag_bet+1;

diag=[];
m=-1;
for i=1:length(diag_bet)
    diag=[diag vec(m+diag_bet(i))];
    m=m+diag_bet(i);
end

disp(1+sum(diag))
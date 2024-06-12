%Project Euler Problem 24
%Find the millionth lexicographic permutation of the digits 0-9

str='0123456789';
perm_str=perms(str);

perm_num=zeros(length(perm_str),1);
for i=1:length(perm_str)
    perm_num(i)=str2double(perm_str(i,:));
end

lex=sort(perm_num);

mil=sprintf('%.0f',lex(1000000));

fprintf('The millionth lexicographic permutation of the digits 0-9 is ')
fprintf('%s\n',mil)
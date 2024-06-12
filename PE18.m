%Project Euler Problem 18
%Find the largest sum from top to bottom of the triangle given

fid=fopen('PE18new.txt');

tri=[];
for i=1:15
    vec=fscanf(fid,'%f%f%f%f%f%f%f%f%f%f%f%f%f%f%f',15);
    tri=[tri;vec'];
end

tot=zeros(size(tri));
tot(15,:)=tri(15,:);

for i=14:-1:1
    for j=1:i
        tot(i,j)=tri(i,j)+max(tot(i+1,j),tot(i+1,j+1));
    end
end

disp(tot(1,1))
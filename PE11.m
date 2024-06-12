%Project Euler Problem 11
%Find the greatest product of four adjacent numbers

%Create matrix
grid=csvread('PE11.csv');
grid(1,:)=[];
grid(:,1)=[];

%Turn off exponential form
format long g

%Find greatest product in the horizontal direction
max_hor=0;
for i=1:20
    for j=1:17
        prod_hor=grid(i,j)*grid(i,j+1)*grid(i,j+2)*grid(i,j+3);
        if prod_hor>max_hor
            max_hor=prod_hor;
        end
    end
end

%Vertical direction
max_ver=0;
for i=1:20
    for j=1:17
        prod_ver=grid(j,i)*grid(j+1,i)*grid(j+2,i)*grid(j+3,i);
        if prod_ver>max_ver
            max_ver=prod_ver;
        end
    end
end

%Right diagonal
max_rdia=0;
for i=1:17
    for j=1:17
        prod_rdia=grid(i,j)*grid(i+1,j+1)*grid(i+2,j+2)*grid(i+3,j+3);
        if prod_rdia>max_rdia
            max_rdia=prod_rdia;
        end
    end
end

%Left diagonal
max_ldia=0;
for i=1:17
    for j=20:-1:4
        prod_ldia=grid(i,j)*grid(i+1,j-1)*grid(i+2,j-2)*grid(i+3,j-3);
        if prod_ldia>max_ldia
            max_ldia=prod_ldia;
        end
    end
end

max_vec=[max_hor,max_ver,max_rdia,max_ldia];
fprintf('The greatest product of four adjacent numbers is ')
fprintf('%d\n',max(max_vec))
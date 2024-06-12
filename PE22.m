%Project Euler Problem 22
%Find the total of all the name scores in the file
%A name score is obtained by summing up alphabetical values in the name
    %and multiplying the sum by its position number when sorted by
    %the alphabetical order

clear

fid=fopen('names.txt');
s=textscan(fid,'%s');

name=split(s{1});

%Store the index numbers for apostrophes
ap=[];
for i=1:length(name{1})
    if name{1}(i)=='"'
        ap=[ap i];
    end
end

%Store names into cells
%All names are in between two apostrophes
%Index them according to numbers in 'ap'
i=1;
for j=1:length(ap)-1
    if name{1}(ap(j)+1)~=','
        unordered{i}=name{1}((ap(j)+1):(ap(j+1)-1));
        i=i+1;
    end
end

%Sort by aplphbetical order
n=sort(unordered);

%Find scores for each name and add for total score in the list
tot=0;
for i=1:length(n)
    score=0;
    for j=1:length(n{i})
        if n{i}(j)=='A'
            score=score+1;
        elseif n{i}(j)=='B'
            score=score+2;
        elseif n{i}(j)=='C'
            score=score+3;
        elseif n{i}(j)=='D'
            score=score+4;
        elseif n{i}(j)=='E'
            score=score+5;
        elseif n{i}(j)=='F'
            score=score+6;
        elseif n{i}(j)=='G'
            score=score+7;
        elseif n{i}(j)=='H'
            score=score+8;
        elseif n{i}(j)=='I'
            score=score+9;
        elseif n{i}(j)=='J'
            score=score+10;
        elseif n{i}(j)=='K'
            score=score+11;
        elseif n{i}(j)=='L'
            score=score+12;
        elseif n{i}(j)=='M'
            score=score+13;
        elseif n{i}(j)=='N'
            score=score+14;
        elseif n{i}(j)=='O'
            score=score+15;
        elseif n{i}(j)=='P'
            score=score+16;
        elseif n{i}(j)=='Q'
            score=score+17;
        elseif n{i}(j)=='R'
            score=score+18;
        elseif n{i}(j)=='S'
            score=score+19;
        elseif n{i}(j)=='T'
            score=score+20;
        elseif n{i}(j)=='U'
            score=score+21;
        elseif n{i}(j)=='V'
            score=score+22;
        elseif n{i}(j)=='W'
            score=score+23;
        elseif n{i}(j)=='X'
            score=score+24;
        elseif n{i}(j)=='Y'
            score=score+25;
        else
            score=score+26;
        end
    end
    tot=tot+i*score;
end

disp(tot)
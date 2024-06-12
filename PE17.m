%Project Euler Problem 17
%Find the number of letters if 1 to 1000 were written out in letters
%(not counting spaces and hyphens)

clear

%1-9
sum1=length('onetwothreefourfivesixseveneightnine');

%10-19
sum10=length(['teneleventwelvethirteenfourteenfifteen'...
    'sixteenseventeeneighteennineteen']);
%20-29
sum20=sum1+10*length('twenty');
%30-39
sum30=sum1+10*length('thirty');
%40-49
sum40=sum1+10*length('forty');
%50-59
sum50=sum1+10*length('fifty');
%60-69
sum60=sum1+10*length('sixty');
%70-79
sum70=sum1+10*length('seventy');
%80-89
sum80=sum1+10*length('eighty');
%90-99
sum90=sum1+10*length('ninety');

sum99=sum1+sum10+sum20+sum30+sum40+sum50+sum60+sum70+sum80+sum90;

%100-199
sum100=sum99+100*length('onehundred')+99*length('and');
%200-299
sum200=sum99+100*length('twohundred')+99*length('and');
%300-399
sum300=sum99+100*length('threehundred')+99*length('and');
%400-499
sum400=sum99+100*length('fourhundred')+99*length('and');
%500-599
sum500=sum99+100*length('fivehundred')+99*length('and');
%600-699
sum600=sum99+100*length('sixhundred')+99*length('and');
%700-799
sum700=sum99+100*length('sevenhundred')+99*length('and');
%800-899
sum800=sum99+100*length('eighthundred')+99*length('and');
%900-999
sum900=sum99+100*length('ninehundred')+99*length('and');

sum=sum99+sum100+sum200+sum300+sum400+sum500+sum600+sum700+sum800+...
    sum900+length('onethousand');

disp(sum)
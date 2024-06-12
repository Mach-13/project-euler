%Project Euler Problem 15
%Find the number of routes from top left corner to rigth bottom corner
%through n*n grid, only moving right and down

n=input('Enter n: ');

%Pascal's triangle
%Central binomial coefficient
routes=nchoosek(2*n,n);
fprintf('The number of routes of %d*%d grid is %d\n',n,n,routes)
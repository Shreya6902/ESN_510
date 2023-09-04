clc 
close all
% check the dimension
y = randi(10,[1,N]);
y = y';

% prepare G matrix  - Dimension (N+1) x (N+1)
%    [x0^0  x0^1  x1^2 ..... x1^N]
%    |x1^0  x1^1  x1^2 ..... x1^N|
%    |x2^0  x2^1  x2^2 ..... x2^N|
%G = |x3^0  x3^1  x3^2 ..... x3^N|
%    |:  :   :     :     :    :  |
%    [xN^0  xN^1  xN^2 ..... xN^N]
N = 5;
x = [1,3,5,7,9];
G = zeros(N);
for k= 0:N-1
    for c=0:N-1   
     G(k+1,c+1) = x(k+1)^c;
end
end
 
 G

m = inv(G)*y;

xi = linspace(x(1),x(end),1000);

xi = xi';
G1 = [];
for j= 0:(N-1)
    G1= [G1 xi.^j]
end
disp(G1)


yi = G1 * m  


plot(xi,yi)
hold on 
plot(x,y,'o')
%Your first and last name:Lap Pham
%Your 810/811 number: 811742057
%Lab 11 Assignment


%You have to install Symbolic Math Toolbox package by going to Home and
%then Add Ons
%Then implement this method that finds a polynomial that goes through the
%given points

% you can test run this code in command window. 

% you can divert from these commented directions

function [m] = newtonInterpolation(filename)
points=readmatrix(filename);
% print points to find the format the points are in. 
syms x; %this is the usecase of symbolic math toolbox package
X=points(:,1);
Y=points(:,2);
n = length(X);
for j=2:n
    for i=1:n-j+1,Y(i,j)=(Y(i+1,j-1)-Y(i,j-1))/(X(i+j-1)-X(i));
    end
end
m=Y(1,n);
for i=2:n,m=m*(x-X(i))+Y(i,n-i+1);end

%plot the function m between -5 and 5 of x axis
fplot(m,[-5,5]);
end
% use the x symbol as it is used in below link

% Follow this link for conceptual understanding: 
% https://www.math-linux.com/mathematics/interpolation/article/newton-s-interpolation-polynomial

% set a loop in place to compute newton interpolation polynomial
% i = 1;
% m=0;
% while i <= size(points, 1)
%     
%    
%    if i == 1
%        % find alpha 0
%        
%    % find other alpha values
%    else
%        % Since each alpha value depends on previous alpha values
%        % find a way to compute current alpha by either recursively 
%        %calculating previous values or through loops 
%        
%        % you might need to define a function that you call here to
%        % calculate alpha
%        
%        
%        %also you can run a loop to find 'e0..en'  
%        
%    end
% %add each term to the solution m 
% end


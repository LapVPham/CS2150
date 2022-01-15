%Your first and last name:Lap Pham
%Your 810/811 number: 811742057
%In class exercise / Lab 10


%You have to install Symbolic Math Toolbox package by going to Home and
%then Add Ons
%Then implement this method that finds roots using Newton's method

% you will run this code by calling Newton(@(x)x^2+2*x+1, @(x)2*x+2, 1,5) in your
% matlab's command window. 
%@(x) is used to create a function handle. This creates a function that you can 
%use as a mathematical function Fun(x)

function [m] = Newton(Fun ,der, a,b)

syms x; %this is the usecase of symbolic math toolbox package

%Fun(x) is how you will use the function
%der(x) is how you will use the derivative of the function

%you can use the while loop to implement the newton method, make sure
%that the loop does not run forever by terminating it from the inside.

%in order to find Fun(x) value at say point a i.e Fun(a), you can use the
%subs() method like you used in Taylor polynomial exercise.


while(true)
    % calculate the approximate root
    
    %check if two approximations differ by a small number and terminate the search
end

% you will run this lab in command window of your matlab, just like the
% taylorPolynomial Lab

end
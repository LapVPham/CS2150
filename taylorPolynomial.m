%Your first and last name:Lap Pham
%Your 810/811 number: 811742057
%In class exercise / Lab 08
%You have to install Symbolic Math Toolbox package by going to Home and
%then Add Ons
%Then implement this method that calculates taylor series with given
%arguments

% you will run this code by calling taylorPolynomial(@(x)1/x, 1,5)
%@(x) is used to create a function handle. This creates a function that you can 
%use as a mathematical function Fun(x)

function [TA] = taylorPolynomial(Fun ,a,N)

syms x; %this is the usecase of symbolic math toolbox package

%define a term which you would aggregate the answer to 
%Fun(x) is how you will handle the function
d = Fun(x);
TA=0;

for n = 0:N
    %calculate the derivatives usig diff method. Note that you will need
    %higher and higher derivatives as loop goes on
    t = diff(d,n);
    %find value of derivative function at 'a' using subs() method
    val = subs(t,a);
    %calculate the Taylor series, TA step by step
     TA = TA + val*(x-a)^n/factorial(n);
end

%in the last step, you will run a fplot on the Taylor Series
%use xlim with a range of -4 to 4
fplot(TA,[-4,4]);
end
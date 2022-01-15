%Your first and last name:Lap Pham
%Your 810/811 number: 811742057
%Lab 05

%The matrix function is already implemented and it contains
%the correct I/O for this lab.
%You should NOT modify the code in the matrix function.
%Your task for this lab assignment is to correctly implement
%all of the following functions (called by the matrix function): 
% matrix_multiplication, addition, scalar_multiplication, 
%based on their comments and examples.  
%Assume arg1 is the name of an input file in the current working 
%directory that contains the elements of Matrix A. 
%Assume arg2 is the name of an input file in the current working 
%directory that contains the elements of Matrix B.
function [] = matrix(arg1, arg2)
  A = readmatrix(arg1);
  B = readmatrix(arg2);

  printmatrix(A, "A");
  printmatrix(B, "B");
 
  m1 = matrix_multiplication(A,B);
  printmatrix(m1, "A x B");
  m2 = matrix_multiplication(B,A);
  printmatrix(m2, "B x A");
  
  m3 = scalar_multiplication(A,5);
  printmatrix(m3, "5 x A");
  
  m4 = addition(A,B);
  printmatrix(m4, "A+B");
  
  m5= SolvethisEquation(A,B);
  printmatrix(m5, "A^2 + B^2+ 2AB");
end

%Print a vector v with text label.
%Do not change this function.
function [] = printmatrix(A, label)
  fprintf("%s =\n", label);
  disp(A);
end

%Return m, the result of matrix multiplication between A and B.
%Use loop(s), variable(s), and simple arithmetic operator(s) to 
%to implement this function. 
%Do not use any built in functions or operators that calculate 
%the matrix multiplication automatically. Do not use A*B. 
function [m] = matrix_multiplication(A, B)
%take steps to make sure matrix multiplication is legal between A and B
%if AxB is not possible, print a message that communicates the same.
if((size(A,2)) ~= (size(B,1)))
    fprintf("Sorry, matrix 1 number of columns must equal matrix 2 number of rows\n");
    m = zeros(1,1);
    return;
end
[r1 c1] = size(A);
[r2 c2] = size(B);

if( c1 == r2)
        m = zeros(r1, c2);
        for i  = 1: r1
           for j =1:c2
              for k = 1:r2
                  m(i,j) = m(i,j) + A(i,k) * B(k,j);
              end
           end
        end
end

end

%Return d, result of multiplying scalar c with Matrix A. 
%Use loop(s), variable(s), and simple arithmetic operator(s) to 
%to implement this function.Do not use c*A simply. Instead iterate through
%each element and multiply it with the scalar c. 
function [d] = scalar_multiplication(A, c)
[r1 c1]=size(A);

d=zeros(r1,c1);
for i=1:r1;
    for j=1:c1;
        
            d(i,j)= A(i,j)*c;
               
    end
end

end

%to implement this function.
%you can use a single operator if you want to. 
function [C] = addition(A, B)
%check if A and B can de added.
%If A and B can't be added, print a message that conveys this. 
if((size(A,2)) ~= (size(B,1)))
    fprintf("Sorry, matrix 1 number of columns must equal matrix 2 number of rows\n");
    m = zeros(1,1);
    return;
end
[r1,c1]=size(A);
C=zeros(r1,c1);
for i=1:r1
    for j=1:c1
        C(i,j)=B(i,j)+A(i,j);
    end
end

end

%Return a matrix that results from the given equation.
%Use all above functions to solve this equation, A*B is matrix
%multiplication between A and B
% find a final matrix named f(AB) where f(AB)= A^2+ 2*A*B+ B^2
function [fAB] = SolvethisEquation(A,B)
%Note that this might not be possible if multiplication or addition is not
%legal. In that case, print a message that it can't be done. 
fAB = zeros(size(A));
fAB=matrix_multiplication(A,A);
fAB=addition(fAB,matrix_multiplication(B,B));
fAB=addition(fAB,scalar_multiplication(matrix_multiplication(A,B),2));
end


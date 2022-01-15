%Your first and last name:Lap Pham
%Your 810/811 number: 811742057
%Lab Bonus Exercise
function [] = matrices()
m1=[1 2 3; 2 3 1; 5 6 7];
m2=[5 6 7; 1 2 7; 2 2 1];
m1*m2; %this answer is for your reference

%PART 1

%use dot product between vectors in m1 and m2 to find m1 x m2, the matrix
%multiplication (do not use m1*m2 for this).

%use this link for reference: https://www.khanacademy.org/math/precalculus/x9e81a4f98389efdf:matrices/x9e81a4f98389efdf:multiplying-matrices-by-matrices/a/multiplying-matrices
% The link contains the intuition and formula for dot product based matrix
% multiplication.

s="This is the answer of vector based matrix multiplication:"
%print your answer in command window i.e don't use ;
%your code here

n1 = size(m1, 2);
n2 = size(m2, 2);
m3 = zeros(n1);
for i = 1: n1
  for j = 1: n2
    v1 = m1(i,:);
    v2 = m2(:,j);
    n = size(v1, 2);
    temp = 0;
    for k = 1: n
      temp = temp + v1(k) * v2(k);
    end 
    m3(i,j) = temp;
  end
end

disp(m3);

%PART 2

%without using dot product between vectors, and by just using scalar
%multiplication between respective elements, perform the matrix
%multiplication m1 x m2. (do not use m1*m2 or the dot product)



s="This is the answer of individual element based matrix multiplication:"
%print your answer in command window i.e don't use ;
%your code here
% use this link for reference : https://www.cuemath.com/algebra/multiplication-of-matrices/

m3 = zeros(n1);
for row = 1: n1
  for col = 1: n2
    temp = 0;
    for i = 1: n2
      temp = temp + m1(row, i) * m2(i, col);
    end
    m3(row, col) = temp;
  end
end


disp(m3);

%Submit the .m file and an image of your output. 


end
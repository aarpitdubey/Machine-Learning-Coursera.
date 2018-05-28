function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%initialize value of h = 0
h = 0;

%Computing the cost of a particular choice of theta
pc = zeros(m, 1);

%Nested For-Loop:
for i=1:m,  
    for j = 1 : length(theta),
        pc(i) = pc(i) + theta(j) * X(i, j);
    end;
 end;
 
%For Loop for h :
for i = 1 : m,
    h = h + (pc(i) - y(i))^2;
end;

% Set value of J:
J = 0.5 * h / m;


% =========================================================================

end;

function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

% declare a row vector i to iterate over the data
% points in X
i = 1:m;
  
% the hypothesis function is the constant term + the weight from
% the weight vector theta point multiplied by the second value in the ith row
% of X
h_theta = theta(1) + theta(2) .* X(i,2);

% compute the cost function
J = (1 / (2 * m)) * sum(( h_theta(i) - y(i)) .^ 2);
  



% =========================================================================

end

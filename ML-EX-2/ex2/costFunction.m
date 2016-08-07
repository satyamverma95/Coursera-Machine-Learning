function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Compute cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta


% calculation of thelreta' and X
% X = m*n matrix
% theta = n*1 vector 
termproduct = X * theta;
 
temp1 = log (sigmoid(termproduct));
temp2 = log (1-sigmoid(termproduct));

J = (-1/m) * sum( y .* temp1 + (1 - y) .* temp2 );

for i = 1 : length (theta);
   
grad (i) =  (1/m) * sum( (sigmoid(termproduct) - y) .* X(:,i) ); 

end



% =============================================================

end

% no of training set 4, no of features 5,  temp1  and temp2 gives simoid value for
% each theta. 

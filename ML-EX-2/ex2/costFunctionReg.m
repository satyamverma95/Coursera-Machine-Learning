function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

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
 
% productterm = X * theta; 
%temp1 = log (sigmoid (productterm));
%temp2 = log (1 - sigmoid(productterm));
%J = (-1/m) * sum( y .* temp1 + (1- y) .* temp2) + (lambda/2*m) + sum( theta(1:size(X,2)).^2); 

 termproduct = X * theta;
 
temp1 = log (sigmoid(termproduct));
temp2 = log (1-sigmoid(termproduct));

J = (-1/m) *( sum( y .* temp1 + (1 - y) .* temp2 )) + (lambda/(2*m)) * sum( theta(2:size(X,2)).^2);

for i = 1 : length (theta)
   if (i == 1)
       grad (i) =  (1/m) * sum( (sigmoid(termproduct) - y) .* X(:,i) ) ;
   else 
       grad (i) =  (1/m) * sum( (sigmoid(termproduct) - y) .* X(:,i) )  + (lambda/m) * theta(i);
   end
end


% =============================================================

end
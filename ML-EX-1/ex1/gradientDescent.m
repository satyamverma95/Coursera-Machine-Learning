function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
   
    %s1 = (1/m) * sum (((X * theta)- y)); 
    %s2 = (1/m) * sum (((X * theta)- y)'*X);
    %theta (1) = theta(1) - alpha * (s1) ;
    %theta (2) = theta(2) - alpha * (s2) ; 
    k=1:m; 
    j1=(1/m)*sum((theta(1)+theta(2).*X(k,2))-y(k)); 
    j2=(1/m)*sum(((theta(1)+theta(2).*X(k,2))-y(k)).*X(k,2)); 
    theta(1)=theta(1)-alpha*(j1); 
    theta(2)=theta(2)-alpha*(j2);
    
    %theta(1)=theta(1)-(alpha/m)*sum( (X*theta)-y);
    % theta(2)=theta(2)-(alpha/m)*sum( ((X*theta)-y)'*X);
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
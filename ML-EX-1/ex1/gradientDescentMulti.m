function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
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
    %       of the cost function (computeCostMulti) and gradient here.
    %
   % i = 1:m;
   % J1 = (1/m) * sum( ((theta(1) + theta(2) .* X(i,1) + theta(3) .* X(i,2))- y(i)) );
   % J2 = (1/m) * sum( ((theta(1) + theta(2) .* X(i,1) + theta(3) .* X(i,2))- y(i) .* X(i,2)) );
   % J3 = (1/m) * sum( ((theta(1) + theta(2) .* X(i,1) + theta(3) .* X(i,2))- y(i) .* X(i,3)) );
   % theta(1) = theta(1) - alpha * (J1);
   % theta(2) = theta(2) - alpha * (J2);
   % theta(3) = theta(3) - alpha * (J3);
    
    k=1:m; 
    j1=(1/m)*sum((theta(1)+theta(2).*X(k,1))-y(k)); 
    j2=(1/m)*sum(((theta(1)+theta(2).*X(k,1))-y(k)).*X(k,1)); 
    j3=(1/m)*sum(((theta(1)+theta(2).*X(k,1) + theta(3).* X(k,2))-y(k)).*X(k,2));
    theta(1)=theta(1)-alpha*(j1); 
    theta(2)=theta(2)-alpha*(j2);
    theta(3)=theta(3)-alpha*(j3);
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
  
end

end

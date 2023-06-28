% The Learning Hub
% 2000 lines of Matlab code

% Initialize values
x = 0;
y = 0;
z = 0;
a = 0;
b = 0;
c = 0;

% Create a loop to run 2000 times
for i = 1:2000
    
    % Update values
    x = x + 0.1;
    y = y + 0.2;
    z = z + 0.3;
    a = a + 0.4;
    b = b + 0.5;
    c = c + 0.6;
    
    % Compute new values
    result1 = x^2 + y^2;
    result2 = z^2 + a^2;
    result3 = b^2 + c^2;
   
    % Print out current results
    fprintf('Iteration %d: Result 1 = %f, Result 2 = %f, Result 3 = %f \n', i, result1, result2, result3)

end
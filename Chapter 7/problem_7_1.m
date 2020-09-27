%% Liniear Associator 
% Single-Neuron Perceptron

% Generate dataset
x = [
    [ 1, -1, 1, -1]
    [1, 1, -1, -1]
    ];

y = [
    [1,-1]
    [1,1]
    ];

% (i) use the hebb rule to find the appropriate weight matrix


total_epoch = 5;
learning_rate = 0.2;
gamma = 0.2;
            
% generate weight
w = rand(2,4);

[rows, cols] = size(x);
%% Training
for epoch=1:total_epoch
    fprintf("\n Training on %d \n", epoch);
    w_old = w;
    
    for i=1:rows
        % calculate n
        n = w*x(i,:)';
        
        % a = n
        a = purelin(n);
        
        % updating weight
        % we use filtered learning W_new = (1-gamma) W_old + alpha * target * input
        w = (1 - gamma)*w_old + learning_rate * y(i,:)' * x(i,:);
        
        fprintf("\n a : ");
        disp(a)
        fprintf("\n Weight : ");
        disp(w)
    end
    
    % Step 2.3 : Stop training if w = w_old
    if ( w == w_old)
          break; 
    end
    
end

%% Testing
fprintf("Testing\n");
for i=1:rows
      % calculate n
        n = w*x(i,:)';
        
        % a = n
        a = purelin(n);
        
        fprintf("a : ");
        disp(a)
end

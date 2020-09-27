%% initialize dataset
X = [
    [1,2] 
    [-1,2]
    [0,-1]           
    ];

y = [1 , 0, 0];

%% generate random weight
W = rand(1,2); % 1 node 2 features
b = 0.0;


%% iteration
total_epoch = 10;
epoch = 1;
index = 1;
fprintf('Training \n')
while epoch < total_epoch
    fprintf('Epoch %i \n', epoch)
    % iteration over length
    for i=1:length(X)
       % calculate a
        w_p = W*X(i,:)' + b;
        %fprintf('w_p %i : %s \n',i,w_p)
        % a = W*X(i,:)';
        fprintf("Boundaries : %d + %d = 0 \n", w_p, b);

        % hardlim function
        if (w_p >= 0)
            a = 1;
        else 
            a = 0;
        end

        % calculate error
        e = y(i) - a;

        % unified learning rules
        if y(i) == 1 && a == 0
            w_new = W + X(i,:);
        elseif y(i) == 0 && a == 1
            w_new = W - X(i,:);
        elseif y(i) == a
            w_new = W;
        end

        % update weight
        W = w_new;
        % update bias
        b = b + e;
    end
    
    % check e
    if ( e == 0)
        break;
    end
    epoch = epoch + 1;
end

%% Testing
X_test = [0,1];

% calculate a
w_p = W*X_test' + b;
fprintf('Testing \n')
fprintf('Weight Operation %i : %s \n',i,w_p)

% hardlim function
if (w_p >= 0)
    a = 1;
else 
    a = 0;
end

fprintf("Result  : %i \n", a);
    
%% plot the boundaries
a = W*X_test';
fprintf("Boundaries : %d + %d = 0 \n",a, b);



function [trained_weight, trained_bias] = train_single_neuron(x, y, total_epoch)
    
    %TRAIN_SINGLE_NEURON function gives the trained weight and bias from the
    %neural network for one neuron
    % Parameters : 
    %   - x_test : features/prototpye matrices
    %   - y_test : label/target matrices
    %   - total_epoch : number of epoch 
    % Return : 
    %   - trained_weight : result of training as weight
    %   - trained_bias : result of training as bias

    % Step 1 : Generate Weight and Bias
    w = rand(1,2); % random weight for 1 node 2 features
    b = rand(1); % random bias
    
    % Step 2 : Training
    epoch = 1;
    % Step 2.1 : iteration for epoch
    while epoch < total_epoch
        fprintf("\n -- Train %d epoch -- \n", epoch);
        
        % set w_old as w before update.
        w_old = w;
        
        % Step 2.2 : iteration for every data point for updating weight and bias
        for i=1:length(x)
            
            % Step 2.2.1 : compute a as result 
            a = forward(w, x(i,:), b);
            
            % Step 2.2.2 : compute error
            e = y(i) - a;
            
            % Step 2.2.3 : updating weight using unified learning
            w = unified_learning_rule( e, w, x(i,:));
            
            % Step 2.2.4 : Update Bias
            b = b + e;
            
            fprintf("Weight : ");
            disp(w)
            fprintf("\n Bias :");
            disp(b)
            
        end
        
        % Step 2.3 : Stop training if w = w_old
        if ( w == w_old)
            break; 
        end
        
        % increment epoch
        epoch = epoch + 1;
    end
    
    % debug
    fprintf("\n -- Train Completed on %d epoch -- \n", epoch);
    fprintf("With W ");
    disp(w)
    fprintf("\n bias");
    disp(b)
    trained_weight = w;
    trained_bias = b;

end


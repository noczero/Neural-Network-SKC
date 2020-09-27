function [trained_weight, trained_bias] = train_multi_neuron(x,y, total_epoch, neuron)
    
    %TRAIN_MULTI_NEURON function gives the trained weight and bias from the
    %neural network for more than one neuron
    % Parameters : 
    %   - x_test : features/prototpye matrices
    %   - y_test : label/target matrices
    %   - total_epoch : number of epoch 
    %   - total_neuron : number of neuron
    % Return : 
    %   - trained_weight : result of training as weight
    %   - trained_bias : result of training as bias
    
    
    % Step 1 : Generate Random Weight and Bias
    [row, cols] = size(x);
    w = rand(neuron, cols);
    b = rand(1, neuron);

    % Step 2 : Training
    epoch = 1;
    % Step 2.1 : iteration for epoch
    while epoch < total_epoch
        fprintf("\n -- Train %d epoch -- \n", epoch);
        
        % set w_old as w before update.
        w_old = w;
        
        % Step 2.2 : iteration for every data point for updating weight and bias
        for i=1:row
            
            % Step 2.2.1 : compute a as result 
            a = forward(w, x(i,:), b);
            
            % Step 2.2.2 : compute error
            e = y(i,:) - a;
            
            % Step 2.2.3 : updating weight 
            w = w + e'*x(i,:);
            
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
    fprintf("\nWeight : \n");
    disp(w)
    fprintf("\n Bias : \n");
    disp(b)
    trained_weight = w;
    trained_bias = b;

end


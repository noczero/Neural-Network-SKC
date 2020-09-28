function trained_weight = hebbian_rules_training(x, rule)
    %hebbian_rules_training applied hebbian rules for training network
    % Parameters : 
    %   - x : data input matrices
    % Return : 
    %   - w : trained weight

    [rows, cols] = size(x);
    
    % generate zeros weight
    w = zeros(cols);
    
    total_epoch = 10;
    epoch = 1;
    while (epoch < total_epoch)
        
        fprintf("\n > Training on %d epoch \n", epoch);
        w_old = w;
        
        for i=1:rows
            % compare rule
            if (strcmp('basic',rule))
                % use basic rule
                % update weight using hebb rules w_new = w_old + t*p
                w = w + x(i,:)' * x(i,:); 

            elseif (strcmp('filtered', rule))
                % set gamma and learning rate lower than 1
                gamma = 0.1;
                learning_rate = 0.1;

                % filtered learning
                w = (1 - gamma)*w + learning_rate * x(i,:)' * x(i,:);

            elseif (strcmp('delta', rule))
                % set learning rate lower than 1
                learning_rate = 0.1;
                
                % forward
                n = w*x(i,:)';
            
                % activation function
                a = n;
                for j=1:length(n)
                    a(j) = hardlim_modify(n(j));
                end
                a = a'; % transpose it

                % delta rule
                w = w + learning_rate * (x(i,:) - a)' * x(i,:);

            elseif (strcmp('unsupervised', rule))
                learning_rate = 0.1;
               
                % forward
                n = w*x(i,:)';
                
                % activation function
                a = n;
                for j=1:length(n)
                    a(j) = hardlim_modify(n(j));
                end
                a = a'; % transpose it
            
                % unsepervised hebb
                w = w + learning_rate * a' * x(i,:);
            end
        end
        
        % check if w = w_old
        if (w == w_old)
           break; 
        end
        
        epoch = epoch + 1;
    end
    
    trained_weight = w;
    
    % debug
    fprintf("\n -- Training completed on %d epoch -- \n", epoch);
    % fprintf("Trained Weight : \n");
    % disp(w);
end


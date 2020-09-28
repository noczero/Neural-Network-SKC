function trained_weight = hebbian_rules_training(x)
    %hebbian_rules_training applied hebbian rules for training network
    % Parameters : 
    %   - x : data input matrices
    % Return : 
    %   - w : trained weight

    [rows, cols] = size(x);
    w = zeros(cols);
    
    % update weight using hebb rules w_new = w_old + t*p
    for i=1:rows
       w = w + x(i,:)' * x(i,:);  
    end
    
    trained_weight = w;
    
    % debug
    fprintf("Trained Weight : \n");
    disp(w);
end


function evaluate_model(x_test,y_test, trained_weight, trained_bias)

    %EVALUATE_MODEL function gives the evaluation result of the model
    % Parameters : 
    %   - x_test : features/prototpye matrices
    %   - y_test : label/target matrices
    %   - trained_weight : trained weight from our model
    %   - trained_bias : trained_bias from our model
    % Return : -
    
    fprintf("--- Testing ---\n")
    [rows, ~] = size(x_test);
    positive = 0;
    negative = 0;
    for i=1:rows
        fprintf("\nX - %d \n", i);
        
        % predict x
        y_predict = forward(trained_weight, x_test(i,:), trained_bias);
        
        % compare to original target
        if(y_predict == y_test(i,:))
            fprintf("Status : True\n");
            positive = positive + 1;
        else
            fprintf("Status : False\n");
            negative = negative + 1;
        end
    end

    fprintf("\n -- Accuracy : %d percent--  \n", positive / rows * 100);

end


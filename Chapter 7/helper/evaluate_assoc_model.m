function evaluate_assoc_model(x_test, y_test, trained_weight)

    %EVALUATE_MODEL function gives the evaluation result of the model
    % Parameters : 
    %  - x_test : features/prototpye matrices
    %  - y_test : target matrices, the size same as x_test
    %  - trained_weight : trained_weight<matrices>,
    % Return : -
    
    fprintf("\n --- Testing ---\n")
    [rows, ~] = size(x_test);
    positive = 0;
    negative = 0;
    for i=1:rows
        fprintf("\nX - %d \n", i);
        
        % predict x
        n = trained_weight*x_test(i,:)';
        a = n;
        for j=1:length(n)
            a(j) = hardlim_modify(n(j));
        end
        y_predict = a';
                
        % compare to original target
        if(isequal(y_predict,y_test(i,:)))
            fprintf("\n Status : True\n");
            positive = positive + 1;
        else
            fprintf("\n Status : False\n");
            negative = negative + 1;
        end
    end

    fprintf("\n -- Accuracy : %d %%--  \n\n", positive / rows * 100);

end


function w_new = unified_learning_rule(e, w_old, x)

    %UNIFIED_LEARNING_RULE function applied for the method of weight updating  
    % Parameters : 
    %   - e : error
    %   - w_old : old weight before updating
    %   - x : features as vector 
    % Return : 
    %   - w_new : new weight after updating
   
    % using error for updating weight 
    if( e == 1) 
        % error is positive, so add w old with input x
        w_new = w_old + x;
    elseif ( e == -1) 
        % error is negative, so substract w_old with input x
        w_new = w_old - x;
    elseif (e == 0)
        % no error, no update
        w_new = w_old;
    end
    
    % simplfy the three rules above to this function
    w_new = w_old + e*x;
 
end
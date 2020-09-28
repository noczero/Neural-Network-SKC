function a = hardlim_modify(n)

    %HARDLIM function gives the result of hardlim activation function
    %change 0 to -1
    % Parameters : 
    %   - n : output of w*x
    % Return : 
    %   - a : output of neuron
    
    if (n >= 0)
        a = 1;
    else
        a = -1;
    end
end


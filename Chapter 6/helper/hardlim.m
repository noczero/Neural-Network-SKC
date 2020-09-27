function a = hardlim(n)

    %HARDLIM function gives the result of hardlim activation function
    % Parameters : 
    %   - n : output of wp+b
    % Return : 
    %   - a : output of neuron
    
    if (n >= 0)
        a = 1;
    else
        a = 0;
    end
end


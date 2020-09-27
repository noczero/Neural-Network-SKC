function result = forward(weight, x, bias)
    
    %FORWARD function gives the neuron output
    % Parameters : 
    %   - weight : weight of neuron matrices
    %   - x : features/prototypes matrices
    %   - bias : bias of neuron matrices
    % Return : neuron output (a)

    % compute the wp + b equation
    n = weight*x' + bias';
    
    % using activation function to give a result
    a = n; % duplicate
    
    % for multiple neuron
    for i=1:length(n)
        a_single = hardlim(n(i));
        a(i) = a_single;
    end
    
    % debug
    % fprintf("Boundaries : %d + %d = 0 \n", n, bias)
    fprintf("\nResult (a) : ");
    disp(a')
    result = a';
end


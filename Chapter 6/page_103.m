addpath(genpath('helper')) % add helper path for the function
%% Two neuron preceptron
% Step 1 : Initialize Dataset
x = [[ 1, 1]
     [1,2]
     [2,-1]
     [2,0]
     [-1,2]
     [-2,1]
     [-1,-1]
     [-2,-2]
     ];
 
 y = [ [ 0, 0]
     [0, 0] 
     [0, 1]
     [0, 1]
     [1, 0]
     [1,0]
     [1,1]
     [1,1]];
 
% Step 2 : training
total_epoch = 10;
total_neuron = 2;
[weight , bias] = train_multi_neuron(x , y, total_epoch, total_neuron);
 
% Step 3 : Testing for all the datase with trained weight & bias
evaluate_model(x, y, weight, bias);
 


addpath(genpath('helper')) % add helper path for the function

%% Initialize dataset
X = [
    [1,2]       
    [-1,2]
    [0,-1]           
    ];

y = [1 ; 0; 0];

%% Training model
total_epoch = 10;
[weight, bias] = train_single_neuron(X, y, total_epoch);

%% Testing Model
evaluate_model(X, y, weight, bias);

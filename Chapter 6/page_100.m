addpath(genpath('helper')) % add helper path for the function
%% Problem A
fprintf("--- Problem A ---\n");
% Step 1 : generate data point
X_a = [
    [2, 2]
    [2, 0] 
    [2, -2]
    [0, -2]
    [-2,-2]
    [-2, 0]
    [-2, 2]
    [0, 2]
    ];

y_a = [0; 0; 0; 0; 1; 1; 1; 1 ];

% Step 2 : Trained Model
[trained_weight , trained_bias ] = train_single_neuron(X_a, y_a, 100);

% Step 3 : Testing for all the dataset
evaluate_model(X_a, y_a, trained_weight, trained_bias);

%% Problem B
fprintf("--- Problem B ---\n");
% Step 1 : generate data point
X_b = [
    [2, 2]
    [2, 0] 
    [2, -2]
    [0, -2]
    [-2,-2]
    [-2, 0]
    [-2, 2]
    [0, 2]
    ];

y_b = [0; 0; 1; 1; 1; 0; 0; 0 ];

% Step 2 : Trained Model
[trained_weight , trained_bias ] = train_single_neuron(X_b, y_b, 100);

% Step 3 : Testing for all the dataset
evaluate_model(X_b, y_b, trained_weight, trained_bias);

%% Problem C
fprintf("--- Problem C ---\n")
% Step 1 : generate data point
X_c = [
    [2, 2]
    [2, 0] 
    [2, -2]
    [0, -2]
    [-2,-2]
    [-2, 0]
    [-2, 2]
    [0, 2]
    ];

y_c = [1; 1; 1; 1; 1; 1; 0; 1 ];

% Step 2 : Trained Model
[trained_weight , trained_bias ] = train_single_neuron(X_c, y_c, 100);

% Step 3 : Testing for all the dataset
% Step 3 : Testing for all the dataset
evaluate_model(X_c, y_c, trained_weight, trained_bias);



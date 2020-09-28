%% Autoassociative Network for Digit Recognition
addpath(genpath('helper')) % add helper path for the function
% initialize digit 0, 1, 2
digit_0 = [
        -1 1 1 1 -1 ;
        1 -1 -1 -1 1 ;
        1 -1 -1 -1 1 ;
        1 -1 -1 -1 1 ;
        1 -1 -1 -1 1 ;
        -1 1 1 1 -1
        ]; 
digit_1 = [
        -1 1 1 -1 -1;
        -1 -1 1 -1 -1;
        -1 -1 1 -1 -1;
        -1 -1 1 -1 -1;
        -1 -1 1 -1 -1;
        -1 -1 1 -1 -1;
        ]; 
    
digit_2 = [
        1 1 1 -1 -1;
        -1 -1 -1 1 -1;
        -1 -1 1 -1 -1;
        -1 1 1 -1 -1;
        -1 1 -1 -1 -1;
        -1 1 1 1 1;
        ];

% flatten digits
digit_0_flat = reshape(digit_0' , 1 , []);
digit_1_flat = reshape(digit_1' , 1 , []);
digit_2_flat = reshape(digit_2' , 1 , []);

% join 
x = [ 
    digit_0_flat ;
    digit_1_flat ; 
    digit_2_flat;
    ];

%% Training model
fprintf("--- Training --- \n");
trained_weight = hebbian_rules_training(x);

%% Testing model
evaluate_assoc_model(x, trained_weight);




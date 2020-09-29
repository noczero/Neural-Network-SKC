%% Autoassociative Network for Digit Recognition
addpath(genpath('helper')) % add helper path for the function

% Step 1 : load digits
[x, x_test] = load_digits(3);


%% Step 2 : Training model
fprintf("\n # Training \n");
fprintf("\n Rule : Basic \n");
trained_weight_basic = hebbian_rules_training(x, 'basic');

fprintf("\n Rule : Filtered \n");
trained_weight_filtered = hebbian_rules_training(x, 'filtered');

fprintf("\n Rule : Delta \n");
trained_weight_delta = hebbian_rules_training(x, 'delta');

fprintf("\n Rule : Unsupervised Hebb \n");
trained_weight_unsupervised = hebbian_rules_training(x, 'unsupervised');

fprintf("\n Rule : Pseudoinverse \n");
trained_weight_pseudoinverse = hebbian_rules_training(x, 'pseudoinverse');


%% Step 3 : Testing model
fprintf("\n # Testing for X data \n");

% testing with x train
y_test = x; % set original test
fprintf("\n ## Status X Test : 0 %% corrupted \n");

% basic weight
fprintf("\n Rule : Basic \n");
evaluate_assoc_model(x, y_test, trained_weight_basic);

% filtered weight
fprintf("\n Rule : Filtered \n");
evaluate_assoc_model(x, y_test, trained_weight_filtered);

% delta weight
fprintf("\n Rule : Delta \n");
evaluate_assoc_model(x, y_test, trained_weight_delta);

% unsupervised weight
fprintf("\n Rule : Unsupervised Hebb \n");
evaluate_assoc_model(x, y_test, trained_weight_unsupervised);

% pseudoinverse
fprintf("\n Rule : Pseudoinverse \n");
evaluate_assoc_model(x, y_test, trained_weight_pseudoinverse);



%% Step 4 : Teting with corrupted digits, initialize digit 0, 1, 2
fprintf("\n # Testing Corrupted \n");
fprintf("\n ## Status X Test : 50%% corrupted \n");

% basic weight
fprintf("\n Rule : Basic \n");
evaluate_assoc_model(x_test, y_test, trained_weight_basic);

% filtered weight
fprintf("\n Rule : Filtered \n");
evaluate_assoc_model(x_test, y_test, trained_weight_filtered);

% delta weight
fprintf("\n Rule : Delta \n");
evaluate_assoc_model(x_test, y_test, trained_weight_delta);

% unsupervised weight
fprintf("\n Rule : Unsupervised Hebb \n");
evaluate_assoc_model(x_test, y_test, trained_weight_unsupervised);

% pseudoinverse
fprintf("\n Rule : Pseudoinverse \n");
evaluate_assoc_model(x_test, y_test, trained_weight_pseudoinverse);

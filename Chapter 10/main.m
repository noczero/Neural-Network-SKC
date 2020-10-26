%% Load EEG signal
path = "eeg_data";
load(path+'/processed_data');
load(path+'/processed_times');

%% Make noise signal
T_signal = data; % become target
alpha = 0.0001*rand(size(T_signal)); % noise parameter
noisy_signal =  T_signal + alpha; % become input

% because signal too length to visualize, we took samples between 1 -
% number of samples
n_samples = 200;
channel = 1;
T_signal_samples = T_signal(:,1:n_samples);
noisy_signal_samples = noisy_signal(:,1:n_samples);
times_samples = times(1:n_samples);

% plot signal Input and Target Signals Channel
figure(99);
plot(times_samples,T_signal_samples(channel,:),'--', ...
        times_samples,noisy_signal_samples(channel,:));
title(append('Input and Target Signals Channel ',num2str(channel)));
xlabel('Time');
legend({'Target','Input'});

%% ADALINE model
learning_rate = 0.5;
expected_input_range = [-1 1];
number_neuron = 1;
delay = [ 0 1];
net = newlin(expected_input_range, number_neuron, delay, learning_rate);

% Convert data samples to cell for model
noisy_signal_samples_cell = num2cell(noisy_signal_samples);
T_signal_samples_cell = num2cell(T_signal_samples);


%% Predict Signal on every channel

[n_channel, ~] = size(T_signal_samples);

for i = 1:n_channel

    % do epoch
    for epoch = 1:10
        % simulate adaptive network, it takes network, a noise signal as input, and
        % a target signal, and filter the signal adaptively as output y.
        [net,y,E,pf,af] = adapt(net, ...
                                noisy_signal_samples_cell(i,:), ...
                                T_signal_samples_cell(i,:));
    end

    % visualize Evaluation
    figure(i);
    plot(times_samples, cat(2,y{:}), 'b', ...
       times_samples, T_signal_samples(i,:), '--', ...
       times_samples, cat(2,E{:}), 'g');
    title(append('Evaluation Channel ', num2str(i)));
    legend({'Output','Target','Error'});
end


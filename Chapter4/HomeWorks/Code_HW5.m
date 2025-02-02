% Parameters
T = 2;          % Time delay
s = tf('s');    % Define the Laplace variable

% Transfer function
G = (5 * (s + 1)) / (s * (5 * s + 1)) * exp(-T * s);

% Bode plot
figure;
bode(G);
grid on;

% Gain and Phase Margins
[Gm, Pm, Wcg, Wcp] = margin(G);
disp(['Gain Margin: ', num2str(20*log10(Gm)), ' dB']);
disp(['Phase Margin: ', num2str(Pm), ' degrees']);
disp(['Gain Crossover Frequency: ', num2str(Wcg), ' rad/s']);
disp(['Phase Crossover Frequency: ', num2str(Wcp), ' rad/s']);

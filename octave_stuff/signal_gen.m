x = 0:0.001:2*pi;

% sine wave
s_y = sin(x);
plot(x,s_y,"b","LineWidth",4);

% square wave
hold on;
exp_dec= exp(-x);
plot(x,exp_dec,'r', "LineWidth",3);



grid on;
legend("Sine Wave","Exp Decay");
xlabel("x");

pause;

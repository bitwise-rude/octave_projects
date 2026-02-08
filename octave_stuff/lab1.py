clear; 
%%initial parameter
DT=2e-3;   %sampling time
ns=[0 1];   %numertor
ds=[.03 10];  %denominator

as=tf(ns,ds);  %transfer funciton

zzoh=c2d(as, DT, 'zoh');
zfoh=c2d(as,DT,'foh');

%% step response
figure
step(as,'b',zzoh, 'r--',zfoh ,'k--')
grid on
%% frequency response
figure
bodemag(as,'b',zzoh, 'r--',zfoh ,'k--')
grid on

%% nyquist
figure
nyquist(as)
grid on

%% c2d
pause;

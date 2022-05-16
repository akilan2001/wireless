clc;clear all;close all;
fs=4000;f1=1000;f2=800;
ts=0:(1/fs):1-(1/fs);
s1=20*exp(complex(0,2*pi*f1*ts));
s2=20*exp(complex(0,2*pi*f2*ts));
msg=s1+s2;
dela=[zeros(1,120) msg(1:length(msg)-120)];
figure(1);
subplot(2,1,1);
plot(ts,msg);
subplot(2,1,2);
plot(ts,dela);

%slow and flat
h=randn+(i*randn);
y=h.*msg;
freqres=fft(y);
f1=abs(freqres);
figure(2);
subplot(2,2,1);
plot(f1)
%slow and freq sel
h1=randn+(i*randn);
h2=randn+(i*randn);
y=h1.*msg+h2.*dela;
freqres=fft(y);
f2=abs(freqres);
subplot(2,2,2);
plot(f2);
%fast and flat
h=randn(1,length(ts))+(i*randn(1,length(ts)));
[b,a]=butter(12,20/1000);
lpf=filter(b,a,h);
y=lpf.*msg;
freqres=fft(y);
f3=abs(freqres);
subplot(2,2,3);
plot(f3);
%fast and freq sel
h=randn(1,length(ts))+(i*randn(1,length(ts)));
y=lpf.*msg+lpf.*dela;
freqres=fft(y);
f4=abs(freqres);
subplot(2,2,4);
plot(f4);
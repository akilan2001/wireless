clc;
clear all;
close all
n= randi([0,1],1,1e6);
snr =0:2:40;
mod=2;L=2;r=3;
b=pskmod(n,mod);
h1=1+j;h2=1.7+j;
H=zeros(r,r+L-1);
for p=1:r
   H(p,p:p+1)=[h1 h2];
end
x=[];
X=b;
X_1=circshift(X,1);
X_1(1)=0;
X1=circshift(X,-1);
X1(end)=0;
X2=circshift(X,-2);
X2(end-1:end)=0;
x=[X2;X1;X;X_1];
C=((H*H')\H)*[0;0;1;0];
berwithoutZFE=[];berwithZFE=[];
for p=1:length(snr)
    y=awgn(h1*X,snr(p),'measured');
    Noise=y-h1*X;
    Noise1=circshift(Noise,-1);
    Noise1(end)=0;
    Noise2=circshift(Noise,-2);
    Noise1(end-1:end)=0;
    Y=(H*x)+[Noise2;Noise1;Noise];
    X_PRIME=C'*Y;
    DemodulatedmsgwithoutZFE=pskdemod(y,mod);
    DemodulatedmsgwithZFE=pskdemod(X_PRIME,mod);
    [number1,ratio1]=biterr(n,DemodulatedmsgwithZFE);
    [number2,ratio2]=biterr(n,DemodulatedmsgwithoutZFE);
    berwithZFE=[berwithZFE,ratio1];
    berwithoutZFE =[berwithoutZFE,ratio2];
end
semilogy(snr,berwithZFE,'-b')
hold on
semilogy(snr,berwithoutZFE,'-r')
hold on;
legend('BER WITH ZFE','BERWITHOUTZFE')
title('SNR vs BER')
xlabel('SNR');
ylabel('BER');
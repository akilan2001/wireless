clc;clear all;close all;
input=randi([0,1],10000,1);
bmod=pskmod(input,2);
snr=0:2:40;
h1=2+3j;
h2=4+10j;
y=[];m=[];
output1=[];output2=[];
t1=[];t2=[];

for i=1:length(snr)
    for p=1:2:length(bmod)-1
        c1=(h1*bmod(p,1))+(h2*bmod(p+1,1));
        m(p,1)=awgn(c1,snr(i),'measured');
        c2=(-h1*conj(bmod(p+1,1)))+(h2*conj(bmod(p,1)));
        m(p+1,1)=awgn(c2,snr(i),'measured');

        y(p,1)=conj(h1)*m(p,1)+h2*conj(m(p+1,1));
        y(p+1,1)=conj(h2)*m(p,1)-h1*conj(m(p+1,1));
    end
    t1=pskdemod(y,2);
    output1(:,i)=t1;
    y1=h1*bmod;
    s1=awgn(y1,snr(i),'measured');
    t2=pskdemod(s1,2);
    output2(:,i)=t2;
end
[number1,ratio1]=biterr(output1,input);
[number2,ratio2]=biterr(output2,input);
semilogy(snr,ratio1);
hold on;legend('with stbc');
semilogy(snr,ratio2);
hold on;
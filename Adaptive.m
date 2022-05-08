clc;clear all;close all;
snr=randi([10,30],1,10);
snr=sort(snr);
err=[];
for i=1:length(snr)
    if (snr(i)>=10 && snr(i)<=14)
        a=randi([0,1],1,1000)
        b=pskmod(a,2);
    elseif (snr(i)>=15 && snr(i)<=22)
        a=randi([0,1],1,1000)
        b=pskmod(a,4);
    elseif (snr(i)>=23 && snr(i)<=29)
        a=randi([0,1],1,1000)
        b=qammod(a,16);
    elseif (snr(i)>29 && snr(i)<=30)
        a=randi([0,1],1,1000)
        b=qammod(a,64);
    end
    f=awgn(b,snr(i),'measured')
    if (snr(i)>=10 && snr(i)<=14)
        d=pskdemod(f,2);
    elseif (snr(i)>=15 && snr(i)<=22)
        d=pskdemod(f,4);
    elseif (snr(i)>=23 && snr(i)<=29)
        d=qamdemod(f,16);
    elseif (snr(i)>29 && snr(i)<=30)
        d=qamdemod(f,64);
    end
    [n,r]=biterr(a,d);
    if r==0
        r=1e-7;
    else
        r=(1-r)*1e-7;
    end
    err=[err r];
end
figure;
semilogy(snr,err);
xlabel('SNR');ylabel('BER');title('SNR vs BER');
throughput=[];
for i=1:length(snr)
    if (snr(i)>=10 && snr(i)<=14)
        throughput=[throughput 1];
    elseif (snr(i)>=15 && snr(i)<=22)
        throughput=[throughput 2];
    elseif (snr(i)>=23 && snr(i)<=29)
        throughput=[throughput 4];
    elseif (snr(i)>29 && snr(i)<=30)
       throughput=[throughput 6]
    end
end
figure;plot(snr,throughput);
xlabel('SNR');ylabel('Throughput');
title('SNR vs Throughput')
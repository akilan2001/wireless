clc;
close all;
clear all;

N=24*1024;
b = randi([0,1],1,N);
snr=0:2:40;

mod_order=[2,4];
for order =1:length(mod_order)
for k=1:length(snr)
    mod=pskmod(b,mod_order(order));
    b1 = reshape(mod,length(mod)/64,64);
    for i = 1:length(mod)/64
        inv1(i,:)=fft(b1(i,:),64);
    end
    c1=reshape(inv1,1,length(mod));
    rn=awgn(c1,snr(k),'measured');
    d = reshape(rn,length(mod)/64,64);
    for i = 1:length(mod)/64
        tm(i,:)=ifft(d(i,:),64);
    end
    bo=reshape(tm,1,length(mod));
    demod=pskdemod(bo,mod_order(order));
    BER(k)=biterr(b,demod)/N;
%     if BER(k)==0
%         BER(k)=1e-7;
%     end
end
if order==1
    semilogy(snr,BER);
    hold on;
else
    semilogy(snr,BER,'--');
    hold on;
end
end


mod_order=[16,64];
for order =1:length(mod_order)
for k=1:length(snr)
    mod=qammod(b,mod_order(order));
    b1 = reshape(mod,length(mod)/64,64);
    for i = 1:length(mod)/64
        inv1(i,:)=fft(b1(i,:),64);
    end
    c1=reshape(inv1,1,length(mod));
    rn=awgn(c1,snr(k),'measured');
    d = reshape(rn,length(mod)/64,64);
    for i = 1:length(mod)/64
        tm(i,:)=ifft(d(i,:),64);
    end
    bo=reshape(tm,1,length(mod));
    demod=qamdemod(bo,mod_order(order));
    BER(k)=biterr(b,demod)/N;
%     if BER(k)==0
%         BER(k)=1e-7;
%     end
end
if order==1
    semilogy(snr,BER,'-.');
    hold on;
else
    semilogy(snr,BER,'--.');
    hold on;
end
end
xlabel('SNR in dB');
ylabel('BER');
title('SNR VS BER');
legend('BPSK','QPSK','16QAM','64QAM');

clc;clear all;close all;
snr=0:30;
biterror=[];
x=randi([0,1],1,4096);
for i=1:4
    if i==1
        b=pskmod(x,2);
    end
    if i==2
        b=pskmod(x,4);
    end
    if i==3
        b=qammod(x,16);
    end
    if i==4
        b=qammod(x,64);
    end
    q=reshape(b,64,64);
    p=ifft(q);
    s=reshape(p,1,4096);
    h=1/sqrt(rand(1,1)+i*rand(1,1));
    r=h*s;
    be=[];
    for j=1:length(snr)
        n=awgn(r,snr(j),'measured');
        t=inv(h)*n;
        w=reshape(t,64,64);
        e=fft(w);
        y=reshape(e,1,4096);
        if i==1
            y1=pskdemod(y,2);
        end
        if i==2
            y1=pskdemod(y,4);
        end
        if i==3
            y1=qamdemod(y,16);
        end
        if i==4
            y1=qamdemod(y,64);
        end
        [n,c]=symerr(x,y1);
        be=[be c];
    end
    biterror(i,:)=be;
end
semilogy(snr,biterror(1,:),'--g');
hold on;
semilogy(snr,biterror(2,:),'-*r');
hold on;
semilogy(snr,biterror(3,:),'.bl')
hold on;
semilogy(snr,biterror(4,:),'-b');
clc; clear all;
str=input('Key');
key=double(char(str));
mess=input('Message');
msg=double(char(mess));
ml=length(msg);
kl=length(key);
s=0:255;
j=0;

for i=0:255
    j=mod(j+s(i+1)+key(mod(i,kl)+1),256);
    s([i+1 j+1])=s([j+1 i+1]);
end

j=0;
keystream=[];
for i=1:ml
    j=mod(j+s(i+1),256);
    s([i+1 j+1])=s([j+1 i+1]);
    k=s(mod(s(i+1)+s(j+1)+1,256)+1);
    keystream=[keystream,k];
end
ct=bitxor(keystream,msg);
Encrypted =char(ct)
pt=bitxor(ct,keystream);
Decrypted=char(pt)
    
    
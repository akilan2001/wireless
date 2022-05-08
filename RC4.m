clc;
clear all;
close all;

n = zeros(1,256);
str = input('Enter the String which you want to encrypt: ');
key = double(char(str));
disp(str);
disp(key);
k = zeros(1,256);
message = input('Enter the Message which you want to encrypt: ');
msg = double(char(message));
disp(message);
disp(msg);
keylen = length(key);

for i = 1:256
	n(i) = i-1;
	a = mod(i-1, keylen)+1;

	k(i) = key(a);
end


j=0;
for i = 1:256
	j = mod((i+n(i)+k(i)),256)+1;
	n([i j]) = n([j i]);
end



ciphtext = [];
ciphtextstore = [];
keystream = [];
j = 0;

for i = 1:length(msg)
	j = mod((j + n(i)), 256)+1;
	n([i j]) = n([j i]);
	a = mod((n(i)+n(j)),256);
	currentkey = n(i);
	keystream = [keystream, currentkey];
end
ciphertext=bitxor(keystream,msg);

ciphertextstring = char(ciphertext);
disp(ciphertextstring);
decryptedmsg = bitxor(ciphertext,keystream);

decryptedoutput = char(decryptedmsg);
disp(decryptedoutput);
---
layout: algo
index: true
comments: true
title: Advance Encryption Standard Algorithm
tags:
  - Encryption Algorithm
modifier: 'false'
modtime: '2017-12-06T01:26:24.207Z'

---
{% capture section_desc %}The Advanced Encryption Standard (AES) is a symmetric-key block cipher algorithm. This is the recent leading encryption algorithm by NIST to replace DES algorithm. It accepts the plaintext as a input and encrypts it using a secret key and the encrypted text is once again decrypted with the same key.
![](https://upload.wikimedia.org/wikipedia/commons/3/3f/COXqbcXUwAACzHg.png)
{% endcapture %}
{% capture section_complexity %}As AES algorithm works with a fixed block size, and takes almost the same time independent of the size of input, thus the complexity of AES is  O(1).
If the input is long then the time complexity can be O(m), where m is the message size.
As the key size and number of rounds is grows, AES has a significant impact of the number of OR(byte-wise)  and AND(byte-wise) operations to be used for encryption, but the number of shift(byte-wise) computations raises by a small amount for both encryption and decryption
{% endcapture %}
{% capture section_pseudocode %}Cipher(byte in[16], byte out[16], key_array round_key[Nr+1])
begin
byte state[16];
state = in;
AddRoundKey(state, round_key[0]);
for i = 1 to Nr-1 stepsize 1 do
SubBytes(state);
ShiftRows(state);
MixColumns(state);
AddRoundKey(state, round_key[i]);
end for
SubBytes(state);
ShiftRows(state);
AddRoundKey(state, round_key[Nr]);
end{% endcapture %}
{% capture section_edu %}here is the video tutorial of AES algorithm
{% youtube https://www.youtube.com/watch?v=ayiOhApI6SM%}{% endcapture %}
{% capture section_app %}Advance Encryption Standard (AES) Applications:
The main application of AES algorithm is to encrypt the data being sent. some of the apllications are:
1)The NSA chose AES as one of the cryptographic algorithms to be used by its Information Assurance Directorate to protect national security systems
2) In UART AES is used for secure transfer of data in software and hardware platform
3) Many banking systems use AES-128 and AES-256 to secure online banking or internet banking.
4) Recommanded by NIST{% endcapture %}
{% include algo.html %}

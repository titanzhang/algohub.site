---
layout: algo
index: true
comments: true
title: Advanced Encryption Standard (AES)
tags:
  - Encryption
  - Symmetric Encryption
  - Symmetric
  - aes
modifier: 'false'
modtime: '2017-12-05T16:28:52.266Z'

---
{% capture section_desc %}The **Advanced Encryption Standard (AES)** is a symmetric key encryption standard for electronic data that was was established in 2001 by the US National Institute of Technology (NIST). A symmetric key encryption algorithm is one that uses the same key to encrypt as it does to decrypt. Think of it like the a lock and key, where it is effective at its job of locking, but its difficult to allow someone else to unlock it if needed to be sent to someone else privately, a situation much more suited to asymmetric encryption (see RSA). This is more likely to be used in an application where you want to encrypt a file for personal use, but don't want anyone else to be able to read it if they find it or a database full of valuable customer information. It was created by two Belgian cryptographers, Vincent Rijmen and Joan Daemen and was actually named after the developers, or Rijndael, previously. [The algorithm is formally defined in "FIPS PUB 197" and "ISO/IEC 18033-3"]

AES is a subset of the Rijndael cipher that consists of a specific block size of 128 bits (16 bytes), although the keys can be of sizes 128, 192, and 256 bits. What this block size specification means is that if the message you want to say is over 16 bytes, it will be split into blocks so that it fulfills that, and each block will be encrypted independently. For example, if your message is 32 bytes, it will be broken into 2 blocks, if its 33 bytes, it will be three blocks, with 15 bytes of padding. The second part needed for this algorithm is the key, which can be 128, 192, or 256 bits. The smaller the key, the faster the algorithm will encrypt your message, but it will not be as secure, and vice versa. So 128 bit keys will not encrypt as strongly as 256 bit keys, but they also only require 10 cycles of the algorithm, where as 256 bit keys would need 14 cycles (40% time increase). Before we can perform the actual encryption, we must first generate the original key, which will be used in the first cycle of the algorithm. After it is used the key is expanded by adding a round key to generate the key for the next round. 

**The rounds are as follows:**

1. Key Generation/Expansion
	- An initial round key is derived from the cipher key using Rijndaels key schedule. With AES, we will need a round key for every cycle, plus one extra for the final round.
	- For Reference: https://en.wikipedia.org/wiki/Rijndael_key_schedule (This is a separate piece of work that could be explored if you want a deeper understanding)

2. Initial Round:
	- Add round Key: every byte of the message in its current state is combined with a block of the round key using xor. Using the new round key found with the key schedule you xor the k(i,j) position of the new key with the a(i,j) position of the current message for all (i,j) to get the new message state b.

3. Rounds:
	- Sub Bytes: for every byte in the message state matrix a(i,j), you replace the byte with a subbyte S(a(i,j))

	- Shift rows
	- Mix Columns
	- Add Round Key
	- Repeat 3 if cycles < max cycles

4. Final Round
	- Sub Bytes: Same as above, using the results of step 2
	- Shift Rows: Same as above, using the results of step 2
	- Add Round Key: Same as above, using the results of step 2

{% endcapture %}
{% capture section_complexity %}{% endcapture %}
{% capture section_pseudocode %}{% endcapture %}
{% capture section_edu %}{% endcapture %}
{% capture section_app %}{% endcapture %}
{% include algo.html %}
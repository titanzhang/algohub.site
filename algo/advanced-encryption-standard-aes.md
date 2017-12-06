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
modifier: sdcorlin@cpp.edu
modtime: '2017-12-06T04:38:24.556Z'

---
{% capture section_desc %}The **Advanced Encryption Standard (AES)** is a symmetric key encryption standard for electronic data that was was established in 2001 by the US National Institute of Technology (NIST). A symmetric key encryption algorithm is one that uses the same key to encrypt as it does to decrypt. Think of it like the a lock and key, where it is effective at its job of locking, but its difficult to allow someone else to unlock it if needed to be sent to someone else privately, a situation much more suited to asymmetric encryption (see RSA). This is more likely to be used in an application where you want to encrypt a file for personal use, but don't want anyone else to be able to read it if they find it or a database full of valuable customer information. It was created by two Belgian cryptographers, Vincent Rijmen and Joan Daemen and was actually named after the developers, or Rijndael, previously. [The algorithm is formally defined in "FIPS PUB 197" and "ISO/IEC 18033-3"]AES is a subset of the Rijndael cipher that consists of a specific block size of 128 bits (16 bytes), although the keys can be of sizes 128, 192, and 256 bits. What this block size specification means is that if the message you want to say is over 16 bytes, it will be split into blocks so that it fulfills that, and each block will be encrypted independently. For example, if your message is 32 bytes, it will be broken into 2 blocks, if its 33 bytes, it will be three blocks, with 15 bytes of padding. The second part needed for this algorithm is the key, which can be 128, 192, or 256 bits. The smaller the key, the faster the algorithm will encrypt your message, but it will not be as secure, and vice versa. So 128 bit keys will not encrypt as strongly as 256 bit keys, but they also only require 10 cycles of the algorithm, where as 256 bit keys would need 14 cycles (40% time increase). Before we can perform the actual encryption, we must first generate the original key, which will be used in the first cycle of the algorithm. After it is used the key is expanded by adding a round key to generate the key for the next round. 
**The rounds are as follows:**
1. Key Generation/Expansion
- An initial round key is derived from the cipher key using Rijndaels key schedule. With AES, we will need a round key for every cycle, plus one extra for the final round.
- For Reference: https://en.wikipedia.org/wiki/Rijndael_key_schedule (This is a separate piece of work that could be explored if you want a deeper understanding)
2. Initial Round:
-Add round Key: Every byte of the message in its current state is combined with a block of the round key using xor. Using the new round key found with the key schedule you xor the k(i,j) position of the new key with the a(i,j) position of the current message for all (i,j) to get the new message state b.
![](https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/AES-AddRoundKey.svg/810px-AES-AddRoundKey.svg.png)
3. Rounds:	
- Sub Bytes: for every byte in the message state matrix a(i,j), you replace the byte with a SubByte S(a(i,j))	using an 8 bit substitution box called the Rijndawk S-box. This makes the cipher non-linear, making it difficult to perform attacks that are algebraic in nature. The s-box is made in a way where the S(a(i,j)) position will never be equal to the a(i,j) position and it will also never be equal to any opposite fixed point to S(a(i,j)). This s-box will be used in the decryption as well but with the inverse sub bytes procedure.
![](https://commons.wikimedia.org/wiki/File:AES-SubBytes.svg#/media/File:AES-SubBytes.svg)- Shift rows: This step works on the rows of each block by cyclically shifting the bytes in each row by a predefinited offset. When does AES, the first row is never shifted, each byte in the second row goes one to the left, wrapping to the end if need be. Each byte in the the 3rd row is shifted by 2 and so on until all the rows have been shifted by their row number - 1. This step avoids issues where only the columns of the message are encrypted, making it easier to break
![](https://upload.wikimedia.org/wikipedia/commons/thumb/6/66/AES-ShiftRows.svg/810px-AES-ShiftRows.svg.png)- Mix Columns: During this step, every column of each block of bytes is independantly combined using an invertible linear transformation. The transformation is done using a fixed matrix where the matrix left-multiplied by column gives you the new value of the column in each state. This step can get much more complicated if there is overflow in the matrix transformation, and can be further explored by looking into the the process known as Kjindael MixColumns (https://en.wikipedia.org/wiki/Rijndael_MixColumns).
![](https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/AES-MixColumns.svg/810px-AES-MixColumns.svg.png)
- Add Round Key: Same as above, using the round key and the state of the message from the previous cycle.
- Repeat step 3 if cycles < max cycles
4. Final Round
- Sub Bytes: Same as above, using the results of step 3
- Shift Rows: Same as above, using the results of step 3
- Add Round Key: Same as above, using the results of step 3
	
For Decryption, use the same process, but go backwards, doing the inverse versions of all the same functions.{% endcapture %}
{% capture section_complexity %}Considering that this algorithm is operating on a fixed block size, and each block will take the same amount of time regardless of the input, the time complexity of this algorithm is only O(1). Interesting to note though is some attacks that can recover the key needed for encryption and decryption can take between O(2^126.1) to O(2^254.4) depending on the size of the key and the algorithm used to break it. These are considered computationally infeasible though, and the algorithm is currently still used as the standard.{% endcapture %}
{% capture section_pseudocode %}```
Given parameters: bytes input[], bytes output[], key[], round_key[]
begin
	bytes state[16]
	state = input
	AddRoundKey(state, round_key[0])
	for i =1 in rounds-1 do
		SubBytes(state)
		ShiftRows(state)
		MixColumns(state)
		AddRoundKey(State, round_key[i])
	end for
	SubBytes(state)
	ShiftRows(state)
	AddRoundKey(State, round_key[rounds])
end
```{% endcapture %}
{% capture section_edu %}This link is the first video in a series that explains everything on this page on how to use the algorithm, both in theory and in a C++ application. It was quite helpful for me when first learning:https://www.youtube.com/watch?v=K2Xfm0-owS4{% endcapture %}
{% capture section_app %}The applications of AES are almost endless. Any time you want to encrypt data, AES can be used. As was stated earlier, there are better times to use this, and times where other algorithms where an asymmetric key algorithm would be more useful. Some useful applications for AES:
- Database encryption
- Encryption of personal devices
- Encryption of personal information on drives{% endcapture %}
{% include algo.html %}
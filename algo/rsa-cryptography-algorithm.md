---
layout: algo
index: true
comments: true
title: RSA Cryptography Algorithm
tags:
  - Encryption Decryptio
modifier: 'false'
modtime: '2017-12-06T03:40:34.662Z'

---
{% capture section_desc %} It was proposed in 1977 by Ron Rivest, Adi Shamir and Leonard Adleman and a paper was published in The Communications of ACM in 1978. Here, a public-private key pair is generated, where the public key is distributed to all which one can use to encrypt the message and the private key is kept safe with the owner for decryption.It generates keys using factorization of the two large prime numbers.

RSA Encryption Process:
In the encryption process, ciphertext C is obtained from plaintext M using very simple formula. It is formulated as: C=me mod n, where C = ciphertext, m = plaintext text, e = public key. For example, in Encrypting File System(EFS), the symmetric key that is used to encrypt the file(known as FEK) is then encrypted with a public key that is associated with the user who encrypted the file.

 RSA decryption :
 Plaintext can be generated using the formula: P= Cd mod n. where P= plaintext, Ciphertext, d =private key component. For example, in EFS , during decryption of the file, the EFS component driver uses the private key that matches the EFS digital certificate ( which was used to encrypt the file) in order to decrypt the symmetric key that is stored in the stream. The EFS component driver then uses the symmetric key to decrypt the file.

	{% endcapture %}
{% capture section_complexity %}The time complexity of RSA is O(n^2). It is observed that as the size of private key length increases, the increase in time becomes nonlinear and exponential. Also as private key length increases, the run time memory increases gradually. It is found that the relationship between the private key length and run time memory is estimated as a polynomial equation of order 2 and therefore, the space complexity of RSA can be expressed as O(n^2).
{% endcapture %}
{% capture section_pseudocode %}1. Choose two very large distinct prime numbers say p, q
2. Calculate modulus n for both public and private key, n= pq
3. Calculate Euler’s totient function, Ø(n)= (p-1)  (q-1)
4. Choose an integer e such that 1 < e < Ø(n) and is coprime to Ø(n) i.e gcd(e, Ø(n)) = 1; i.e., e and Ø(n)   are coprime and will be used in encryption process. e will be used as public key component
5. Calculate d which is the modular multiplicative inverse of e (modulo Ø(n)) and will be used in decryption process. d will be kept as private key component.
6. Here, public key is {e,n} and private key is {d,n}*
{% endcapture %}
{% capture section_edu %}here is the video of RSA description: https://www.youtube.com/watch?v=wXB-V_Keiu8
here are the other references: https://en.wikipedia.org/wiki/RSA_(cryptosystem)
                                                http://www.geeksforgeeks.org/rsa-algorithm-cryptography/{% endcapture %}
{% capture section_app %}* Secure Socket Layer (SSL) protocol.
* Secure Shell (SSH) remote connection.
* Pretty Good Privacy (PGP) to guarantee security and privacy
{% endcapture %}
{% include algo.html %}
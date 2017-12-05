---
layout: algo
index: true
comments: true
title: Advanced Encryption Standard
tags:
  - Encryption
  - cryptography
modifier: 'false'
modtime: '2017-12-05T12:17:51.446Z'

---
{% capture section_desc %}**Overview**

The advanced encryption standard (AES) is a symmetric-key, iterated block cipher. A block is a fixed-size portion of an overall message. The algorithm encrypts plaintext messages into indecipherable ciphertext one block at a time such that only authorized parties are able to interpret it. A key, represented as a string of bits, is applied to the text in order to transform the data.

AES is a substitution-permutation network, utilizing steps that substitute bytes with invertible, one-to-one functions, as well as steps that exploit data permutation to rearrange bytes of data in memory relative to one another. It allows only for the use of 128 bit blocks, and keys that are 128 bits, 192 bits, or 256 bits only. Typically, larger key sizes imply greater security at the expense efficiency. AES undergoes more rounds of transformations with larger key sizes, with 10 rounds for 128 bits, 12 rounds for 192 bits, and 14 rounds for 256 bits.

With the exception of the final round, each round applies a sequence of four transformations, each called a step.  In order, the rounds consist of the substitute bytes step, the shift rows step, the mix columns step, and the add round key step.  The last round does not include a mix columns step, but is otherwise similar to the previous rounds.{% endcapture %}
{% capture section_complexity %}Similar to other iterated block ciphers, the time complexity of AES is constant, or, in big-O notation, O(1). While the operations within the algorithm are computationally expensive, the complexity does not change between executions of the algorithm due to the fact that the block size of the function is always 128 bits.  The data contained in the text do not alter the complexity of the algorithm. 

Key length does alter execution time because larger key size implies greater iterations of rounds.  However, the changes in time complexity only alter the constant value, which simplifies to O(1) across different bit sizes.{% endcapture %}
{% capture section_pseudocode %}During the encryption or decryption process, the block is conceptualized as a two-dimensional data structure called the state.  The state can be imagined to be a matrix of four rows and four columns, where each element contains one byte of the block.  The bytes are mapped such that the state is in column-major order.  Similarly, the key is theoretically envisioned as a two-dimensional matrix with four rows and a given number of columns of 32 bits which corresponds to the selected key size of 128, 192, or 256 bits.
```
encrypt_AES(byte[] block, byte[] key)
	byte[] state = block
	round_key(state, key[0])
	for i = 1 to rounds
		sub_bytes(state)
		shift_rows(state)
		mix_columns(state)
		round_key(state, key[i])
	sub_bytes(state)
	shift_rows(state)
	round_key(state, key[rounds])
	return state
```
As can be seen, AES accepts a block of plaintext and a key, and returns the modified ciphertext, denoted here as the state.


**Substitute Bytes**

```
sub_bytes(byte[] state)
	for i = 0 in len(state)
		r, c = nibbles(state[i])
		state[i] = s_box[r, c]
	return state
```
The substitute bytes step replaces each byte of the state with one from a S-box, or substitution box, a 16 by 16 byte matrix.  A single byte value from the S-box is queried by indexing the row of the S-box with the four most significant bits of the state element, and the column of the S-box with the four least-significant bits of the same element.  The S-box accommodates this, given that four bits of a nibble have the values 0 through 15.  The value returned from the S-box then replaces the querying element in the state.

**Shift Rows**
```
shift_rows(byte[] state)
	state[0 to cols] << 0
	state[0 to cols] << 1
	state[0 to cols] << 2
	state[0 to cols] << 3
	return state
```
In the shift rows step, the bytes in each row of the state are cyclically shifted a variable number of byte offsets.  Row zero is not shifted, though row one, two, and three are shifted cyclically one, two, and three bytes left, respectively.  The shift row step was designed to optimize diffusion of bytes in the state; in effect, the bites are shuffled relative to one another

**Mix Columns**
```
mix_columns(byte[] state)
	byte[] c = const_matrix
	for i = 0 to cols
		state[0 to rows] *= c
	return state
```
The mix columns step is permutation step which operates on the on the state in a column-wise manner.  In practice, this is implemented as a multiplication between each column vector of the state and a 4 by 4 matrix with hard-coded values.

**Add Round Key**
```
round_key(byte[] state, byte[] key)
	state = state XOR key
	return state
```
The state is modified via a bitwise exclusive or operation with itself and the round key.  In the AES standard, each round key is conceptualized as a four by four matrix in which each element is a byte, a data structure necessarily similar to the state to allow for the exclusive or operation.  The add round key step is applied to the state once before the iteration of the 10 to 14 rounds, and once per round.
{% endcapture %}
{% capture section_edu %}An effective lecture on AES:
{% youtube https://www.youtube.com/watch?v=NHuibtoL_qk %}{% endcapture %}
{% capture section_app %}The presence of AES is pervasive in modern society.  Its purpose is to ensure the security of sensitive personal, corporate, and federal information. Following from its large and variable key size, the Advanced Encryption Standard provides sufficient security for the transmission of large volumes of sensitive electronic government data since it became the federal standard in 2002.  

In electronic devices, it can be found encrypting data in personal computers, ATMs, mobile phones, wireless devices, and DVDs, to name a just a subset.  AES implementations can be used on 8 bit processors present in many embedded systems, allowing low-cost and low-energy performance.  In wireless sensor networks, the algorithm can be implemented with less than kilobyte of code length and uses only 52 bytes of RAM with its 256 bit key.  During a National Institute of Standards and Technology selection process to find the federal encryption standard, AES performed the fastest on smart cards compared to the other candidates, while using the least amount of RAM.  AES can also be used as a method of privacy transform in IP Security and Internet Key Exchange. 

Thus, the algorithm has a plethora of practical implementations which make life much easier for those who use the technologies, perhaps without even knowing it.{% endcapture %}
{% include algo.html %}
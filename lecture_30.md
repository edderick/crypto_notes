Lecture 30
----------

*Lecture: Thurs 8th May 2014  -  Today: Sun 27th April 2014*

- Denis went over the syllabus
- It seems we haven't learned a lot of things :p
- We'll have fun
- Still don't think I've seen the end of BCM...
- One current interest in cryptography right now:
    - Poor quality implementation of cryptographic algorithms
    - Vulnerability to side channel attacks
    - Vulnerability to dodgy input 
- Recall: DH Key exchange
    - Thanks associativity!
    - Old fashioned was (a * b) % P
    - Need to use big integer arithmetic package though ofc
    - Could break it by sending 0, a value greater than P
    - a, b must be smaller than p-1
    - or pick a g that isn't a generator!
        - Not every element is a generator...
    - So you gotta be careful, else something bad might happen
    - Lots of special cases in Elliptic curves
        - You probably miss-coded it...
    - Talking a lot about how you could be tricked

###The syllabus
- Multidimensional Parity
- Hamming codes
    - Work out the frequency of symbols, and make most frequent symbols shortest
- P out of Q codes
    - A way of marking character boundaries
- Cryptography: Vocab, History
- Steganography
    - Hiding the existence of messages
    - Cipher Hiding &amp; false Errors
- Public-key
    - El gammal
    - RSA
        - Composite numbers: product of two large primes -- the public key
        - The two prime numbers -- the private key
        - An exponent is prime and is part of the public key
        - Popular exponents?
        - Usually either 3 or 65537
            - Three is a bit controversial 
            - e.g. 4<sup>3</sup> % LARGE PRIME = 4<sup>3</sup>.... :)
        - Finding roots is only hard if there is some modulo going on..
        - 4096 bits is the most concerning to us
            - Just return bad random number generators to those guys!
- Authentication, Deniability & Signatures we have seen
    - Signatures are hard so we didn't go into much detail 
- Information, confusion and diffusion 
    - All that Shannon stuff 
    - Entropy
- Modular Arithemetic
    - Inverses
- Fermat's theorems 
    - Little theorem, mainly says the multiplicative group is of order P - 1
    - n<sup>p-1</sup>  = 1
    - Order of the element must divide the multiplicative group
- Chinese remainder theorem 
    - We didn't do 
- Factoring
    - We have only done a little
    - Mainly: 
        - Doing something like RSA or el gammal, you need to fine primes
        - Lots of primes around
        - Sieve of Eristophenese isn't sane for big numbers
            - Use stochastic methods instead
- Finding prime factors:
    - Euclids algorithm, greatest common factor
    - (m, n) where m > n
    - (n, m % n)
    - Second pair is much smaller than the first
    - Remove the multiples of n
        - Handle the remainder
-  Discrete logarithms
-  DES and AES have been covered by Basel
-  We dropeed IDEA
-  One-time pads
    - Can't be more than one-time...
- Secret sharing and splitting?
- Block cipher modes 
    - ECB, CBC, OFB, GCM
- Random numbers 
- Hiding against side channel attacks is hard
    - Especially when power limited 

###Tangents
####Morse Code
- Denis once passed an exam in morse
- Was able to send 12 words a minute!
- Morse code makes commonly used letters shorter
- QAT is a great work

####Taiwanese ID Cards
- They are broken 
- On card RNG
- Got some great test suites
- But I wouldn't bother to use those though! haha
- Ended up with some crappy random numbers
- Taiwan replaces the affected cards
    - But in reality all the cards were affected

Week Four
=========

Lecture 13
----------

*Lecture: Mon 24th February 2014  -  Today: Sun 27th April 2014*

- Multiplicative group on six elements (mod 7) 
    - Is the same as additive group on six elements (mod 6)
    - Except that we have relabelled the elements
- The magic is:
    - We have taken a group with a very simple structure
    - Defined a new permutation of the elements
    - Where multiplication is still quick
    - (Permutation of the elements of C<sub>6</sub>
- Because multiplication is quick
    - Raising to a power is quick
    - g<sup>n</sup> is quick. 
    - g<sup>2n</sup> = (g<sup>n</sup>)<sup>2</sup> = g<sup>2</sup>g<sup>2</sup>
- This is at the heart of all public key cryptography!
    - All popular asymmetric cryptography used today 
    - Depends of finding a clever labelling of the group elements 
    - Such that we can still apply the group operation quickly 
    - Can raise numbers to a high power quickly
    - BUT, from g and g<sup>n</sup> finding n is hard 
    - Using |G| a large prime is believed to be as hard as it can be
- There are some examples of weird permutations that aren't as good as we would like
    - NSA and GCHQ know of a few that we probably don't
- Trying to compute the discrete logarithm is probably more or less fine... 


### El Gamal Encryption 
- Public key is a group AND and element of the group of high order AND g<sup>x</sup>
    - Where x is the private key, and is an integer &lt; |g|
- When encryption
    - Create a number y 
    - Send as part of the message g<sup>y</sup>
    - And encrypt with (g<sup>x</sup>)<sup>y</sup> 
        - Which is a new group element g<sup>xy</sup>
    - In the message, pass g<sup>y</sup> as part of the message
    - The holder of the secret can computer (g<sup>y</sup>)<sup>x</sup>
        - Which is g<sup>xy</sup>
    - And they can therefore decrypt the message
- Must generate a (good) random number y
    - If the random number is bad, then it will break 
- The way this is usually done is:
    - The plaintext is turned into an element of the group 
    - Plaintext =&gt;m' &isin; G  
- Usually we use a double layered system
    - So there is yet another random number, which we use as the key for AES or similar
- As long as the number isn't zero, we can just use the number what the AES key is...
- Send m' &middot; g<sup>xy</sup>
    - Encryption operating is simply multiplication by the key   
- Message ends up twice as big
    - because it is two group elements   
- To decrypt:
    - (m' &middot; g<sup>xy</sup>) &middot; g<sup>-xy</sup>
    - There are other tricks that can be used to make it easier...
- However -- Hardly anyone actually uses El Gamal encryption
    - Because you need a random number
    - And the message becomes twice as big
- This wouldn't work in the additive group
    - The multiplicative group does weird permutations (relative to the additive group)

##Fields
- Groups were dreamed up as an abstraction of symmetries (or operations)
- The key thing is the associative law
- We can get away from the things the operations are acting upon
    - But the fact there were things, meant the associativity existed
- Groups very naturally include:
    - Addition and subtractions on integers
    - Multiplication on integers mod prime
- Multiplication on integers is NOT a group though
    - There are some elements without inverses:
        - 2 * 3 = 6 requires i * 6 = 3

###Field of Fractions
- Integral domains: 
- Addition and subtractions working as a group, and multiplication working as a group (except inverse)
- Then we can consider numbers of the form p/q s.t. n &isin; Z  np / nq = p/q 
- Defined a new equivalence that says that any fraction represents the same fraction with a common factor divided out...
- There is now an inverse for multiplication:
    - 2 * 3 = 6 has 1/2 * 6 = 3 
    - Hooray!
- The exception is zero
- We have:
    - Group under addition (Subtraction is addition of the inverse)
    - Group under multiplication (Division is multiplication by the inverse -- except for zero)
    - There are both commutative
    - Extra law! Carries around the information that multiplication is repeated addition
        - The distributive law: a * (b + c) == a * b + a * c
        - As such a * 1 + a is a + a, not 1
        - This is how the two groups become entangled
    - Once one has algebraic laws, one can abstract away from purpose. 

###Field of Rationals
- Allows all the usual equational reasoning
- If you have a + b + c = a * d + e
    - Can take out the common factor:
    - a != 0 | b + c/a  = d + e/a 
- Elements of fields are just like normal numbers for all the things you'd like to do 
    - Taking out common factors, substituting equations, etc.
    - You can check this
    - One things doesn't work -- INEQUALITIES
        - a &gt; b doesn't imply a + 1 &gt; b + 1
    - Fields do not guarantee a notion of order!
        - Need to add some extra rules, and this prevents lots of interesting fields  

###The Smallest Field
- A group must have AT LEAST 1 element
- Multiplication group is smaller than the addition group
    - Because it doesn't have the zeros
- Smallest possible multiplication group for a field: <table><tr><th>*</th><th>1</th></tr><tr><td>1</td><td>1</td></tr></table>
- Smallest possible addition group for a field: <table><tr><th>+</th><th>0</th><th>1</th></tr><tr><td>0</td><td>0</td><td>1</td></tr><tr><td>1</td><td>1</td><td></td></tr></table>
- These are the only possible groups of these sizes
- We can look at this as:
    - Multiplication is the same as boolean and (&amp;)
    - Addition is the same as boolean exclusive or (XOR ^)
- Can check both groups
    - Diagonal symmetry
    - Distributed law
        - a &amp; (b ^ c) == (a &amp; b) ^ (a &amp; c)
        - Check that by hand, the truth table is pretty tiny!
- A perfectly good field
- In fact -- It is a very important field! 
- We can see that there are finite fields
    - Fields with finite number of elements

###A Bigger Finite Field 
- Recall: 
    - Multiplication mod prime is a group 
    - Multiplication mod non-prime, is not a group 
        - Extra Zeros pop up!  
    - Additive group is still a group regardless of primality
- It would be possible to drop the extra zeros
    - But this has the problem of losing elements of the additive group
    - All numbers that we can remove from the multiplicative group, can be made by the additive group
    - We can just add one until we get back to that number...
- CANNOT make a field by eliminating numbers that generate zeros
    - CANNOT use a nonprime number
    - MUST use a prime number!
- Distributive law: 
    - Works in the same way as remainder classes in groups
    - Laws carry forward from integers
- There are fields of ANY prime size
- Characteristic of a field 
    - Lowest p s.t. 1&middot;p = 0 (for repeated addition)
- 1 + 1 = 0 is a field of characteristic 2
- The field:
    - <table><tr><th>*</th><th>1</th><th>2</th></tr><tr><td>1</td><td>1</td><td>2</td></tr><tr><td>2</td><td>2</td><td>0</td></tr></table>
    - <table><tr><th>+</th><th>0</th><th>1</th><th>2</th></tr><tr><td>0</td><td>0</td><td>1</td><td>2</td></tr><tr><td>1</td><td>1</td><td>2</td><td>0</td></tr><tr><td>2</td><td>2</td><td>0</td><td>1</td></tr></table>
    - Has a characteristic of 3
- F<sub>p</sub> (field of size Prime p) has characteristic p
- There are other finite fields with a characteristic that is not prime
    - Not made by doing modulo arithmetic on something that isn't a prime -- they are different   
- If the characteristic is "infinite" then we write is as 0
    -  e.g. rationals 1 + 1 + 1 + ... + 1 != 0

###A Much Bigger Field
- An infinite field
- The rational numbers -- do not include sqrt(2)
- Q = p/q = np/nq doesn't include sqrt(2)
- We consider pairs of rationals (r1, r2) 
    - Which means r1 + sqrt(2) * r2
- (r1, r2) + (s1, s2) = something
- (r1, r2) - (s1, s2) = something
- (r1, r2) * (s1, s2) = something
- (r1, r2) / (s1, s2) = something
    - Didn't have it written down :(
    - But they all work so long as it isn't zero...
    - Which it can't be
- Precisely because sqrt(2) isn't a rational, we can build up a bigger fields
    - if it is a rational, then we wouldn't be able to do it:
         - division wouldn't work!i
 - Just as you can't do naive clock arithmetic on non integer modular....
    - The thing you add in has to be something new
- This is the same as the complex numbers :)
- There is a lot of hard stuff to do with Complex numbers, rationals and reals
- We can make fields bigger by considering ordered pairs, triples etc
    - But we have to do it carefully to make it work
    - The new numbers we introduce must not be elements of the field already
- We can do exactly the same trick on the binary field 
    - Build up a field that is any number of binary bits
    - Popular, but not as secure as we may like
- All of this stuff is covered on the web...
    - Try an online first year algebra course 

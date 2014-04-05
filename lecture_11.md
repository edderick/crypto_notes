Lecture 11
----------

*Lecture: Tue 18th February 2014  -  Today: Tue 5th April 2014*

- Group G
- g is an element of G
- We can generate a sub group by multiplying g by itself repeatedly
- 1 g gg g<sup>3</sup> g<sup>4</sup> ... g<sup>n-1</sup> 1
    - Where 1 is the identity 
    - This produces a subgroup of size n
    - |g| = n (order)
    - You will never generate a lower power
    - g<sup>n-1</sup> is the inverse of g 
        - g g<sup>n-1</sup> = 1
- Can always generate a group
    - Take any element of a group and keep applying the group operation
    - Until you get back to the identity
    - The resulting group may be the whole group or a smaller sub group
        - Pick 1 as g, you get the group containing 1
        - <table><tr><td></td><td>1</td></tr><tr><td>1</td><td>1</td></tr></table>
        - All other elements will generate a larger group
- For abelian we tend to use 0 as identity and + as the group operator
- For non-abelian  we tend to use 1 as identity and * as the group operator 
- Mathematicians sometimes use e as identity and  as the group operator 
- <table><tr><th></th><th>0</th><th>1</th><th>2</th></tr><tr><td>0</td><td>0</td><td>1</td><td>2</td></tr><tr><td>1</td><td>1</td><td>2</td><td>0</td></tr><tr><td>2</td><td>2</td><td>0</td><td></td></tr></table>
- Identity has order 1
- The other two elements have order 3
- Lagrange's theorem
    - Only divisors of 3 are 1 and 3
    - Identity is the only element that can have order 1 
    - So the others must have order 3
- We can check this
    - 1:
        - 1 + 1 (mod 3)  = 2 
        - 2 + 1 (mod 3) = 0 
        - Three elements: 1, 2 and 0
    - 2: 
        - 2 + 2 (mod 3) = 1
        - 1 + 2 (mod 3) = 0 
        - Three elements: 2, 1 and 0
- If the order of G is prime
    - Any non identity element generates the group 
    - if |G| = prime & g an element of G is not the identity:
        - |g| = |G|
        - any element is a generator
    - The groups are commutative/abelian
    - It can only be the cyclic group of the size of the group
- See: [Pic](https://www.dropbox.com/s/ces0bk26u587qxx/Screenshot%202014-03-14%2012.17.56.png)
- Is not a group...
    - We know that all groups of size five is abelian
    - It isn't symmetric across the diagonal 
    - It doesn't have inverses 
    - So can't be an abelian group -- so is not a group
- You could work this out by checking for all inverses and for associativity
    - But you wouldn't want to do that by hand
    - We have a proof that shows that it isn't
- This is the smallest latin square that is not a group
- See [Pic](https://www.dropbox.com/s/fjg88pojbkzdke7/Screenshot%202014-03-14%2012.22.09.png)
- One of these is quaternion multiplication 
- Computer scientists are all like waaah???
- These two groups are not the same group
    - They are not isomorphic
    - One has 
        - one element of order one
        - one element of order two 
        - six elements of order four
    - The other has
        - one element of order one 
        - seven elements of order two 
    - Cannot find a relabeling that would turn one into the other
- We know matrices under multiplication are associative
- We have inverses, the labelling makes it obvious
- The only thing that would break is associativity
- Represent the group as matrices 

TODO: IMAGES 
1 = -1 = 
i ?= j ?= k ?= 

- The minuses are kinda obvious...
- Linearly independent matrices, all invertible, eigenvalues or +/-1
    - Recall: Maths
- We want determinants of +/-1 
- ij = SOME MATRICES = -k
- ji = SOME MATRICES = k
- i2 = SOME MATRICES = 1
- If you put a -sqrt(1) in front, then it all works out fine
- We find that the other one (right hand) is not associative...
- In conclusion:
    - THE LATIN SQUARE IS NOT ENOUGH TO FIND A GROUP
- If |G| = p prime then there is only one group 
    - C<sub>p</sub>
- If |G| = pq (p & q are prime)
    - C<sub>pq</sub>
    - there may be another group, non abelian
       - if p &gt; q and q mod p = 1
       - e.g. p = 2 and q = 3 
- So: Product of 2 primes => a cyclic group which is abelian, and maybe another non abelian group
- |G| = 15 must be C<sub>15</sub>
    - There are NO other groups of that size
- You can learn a lot just by checking the size of a group

##Ways of showing groups (Summary)
- Cayley tables 
- Permutations (Pick up sticks)
- Matrices 
- Group Presentations

##Group Presentations
- Specify a few group elements, and the properties which that element must respect
- &lt;g | g<sup>n</sup> = 1&gt; = C<sub>n</sub> (Cyclic group of size n) 
- &lt;g&gt; The free group on one generator; The Integers Z
- &lt;g, h&gt; The free group on two generators, is non abelian. e.g. g, gh, ggh, ghgh, ...
    - g and h can be different symbols, as there is no constraint making them the same
- &lt;g, h | gh = hg&gt; Free abelian group on two generators
    - Can write this as g<sup>n</sup>h<sup>m</sup> Where m and n are integers
    - "Group of pairs of integers"
- &lt;g, h | gh = hg, g<sup>m</sup> = 1, h<sup>n</sup> = 1&gt; 
    - If my generators have no common factors, this can be written as
    - &lt;(gh) | (gh)mn = 1&gt;
    - Because you won't get back to 1 until you have mn elements
    - Just the cyclic group written a different way
    - Common factors make things a bit different 
- For abelian groups 
- |G| = n  and n = p<sup>a</sup>q<sup>b</sup>r<sup>c</sup>
- All that matters is whether those p groups are cyclic of order pa 
    - or less than that
- e.g.  n = p<sup>2</sup>q<sup>2</sup>r<sup>2</sup>
    - only possible groups we can have are C<sub>p<sup>2</sup></sub> + C<sub>q<sup>2</sup></sub> + C<sub>r<sup>2</sup></sub>
    - Which is equivalent to C<sub>p<sup>2</sup>q<sup>2</sup>r<sup>2</sup></sub> 
    - Or we can replace C<sub>p<sup>2</sup></sub> with C<sub>p</sub> + C<sub>p</sub> to give C<sub>p</sub> + C<sub>p</sub> + C<sub>q<sup>2</sup></sub> + C<sub>r<sup>2</sup></sub>
        - A four component vector
    - And that's the same as C<sub>p<sub> + C<sub>pq<sup>2</sup>r<sup>2<sup></sub>
    - And there are a few more possibilities that are also different groups
- To tell the groups apart, we look at the order of their elements
- Multiplication modulo 6
- What are the order of the elements?
    - Modulo 7 looks like it might be right
    - because it has the latin square property
    - We already know that modulo multiplication is consistent 
- Can't just say that a * b = ab mod 7
    - We want to inherit the associativity of multiplication 
    - The only way to do that is saying that what you are really doing is multiplying any normal number than has a remainder of a mod 7 with any normal number that has a remainder of b mod 7, which results in a number that results in a number with remainder ab mod 7
    - Never try to prove associativity element by element
    - Take ordinary integer multiplication
    - Do the grouping things together by remainder trick
    - And show that it is consistent
    - If we were wrong, then the consistency would break
- Group has closure
    - But we threw away zero because it break inverses
- We have the latin square property
- Quick check convinces us we have inverses 
- Thus this is a perfectly good group
- 3 is an element of order 6, so it is a cyclic group
- Must be cyclic because there are no common factors

- Everything you need to know about abelian groups
    - If the order of the group has no repeated factors there is only one such group
    - If it does have repeated factors, you can check whether it is cyclic or not
         - Count the elements of low order

##Lagrange's Theorem (Recap)
- Applies to any group
- if H is a subgroup of G then |H| divides |G|
- for all g as an element of G: |g| divides |G|
   
##Tangents 
###Steganography
- Steganography is quite popular at the moment
    - Irregular hostile forces (Terrorists)
    - Don't really want you to know what they are doing
    - People tend to get suspicious when you talk to certain governments in north east africa and the middle east
- Cicada 3301  
    - Famous competition at runs every year 
    - Has some steganography challenges
- GCHQ Cyber Security challenge also has some steganography bits
- Tools used to crack recreational steganography don't tend to work on real world examples 
- People who are serious try a little harder than that...

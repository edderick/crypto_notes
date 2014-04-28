Lecture 15
----------

*Lecture: Thur 27th February 2014  -  Today: Sat 1st March 2014*

- There is no ordering
    - Can't reason about inequalities
    - If you love obscure systems, then you can uses Kleene Algebras
    - These are basically the same as regular expressions
        - Recall: Kleene Star
- {0, 1, 2} is the set
    - Can introduce a new number: &radic;2
        - Because 2 is not a perfect square
        - So isn't a number in this field
    - x<sup>2</sup> = 2
    - x<sup>2</sup> + 1 = 0
        - This is an irreducible polynomial
    - New number x is &radic;2
- Can make the field bigger, just like we did before 
- <table><tr><th>*</th><th>0</th><th>1</th><th>2</th><th>x</th><th>x+1</th><th>x+2</th><th>2x</th><th>2x+1</th><th>2x+2</th></tr><tr><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td><td>0</td></tr><tr><td>1</td><td>0</td><td>1</td><td>2</td><td>x</td><td>x+1</td><td>x+2</td><td>2x</td><td>2x+1</td><td>2x+2</td></tr><tr><td>2</td><td>0</td><td>2</td><td>1</td><td>2x</td><td>2x+2</td><td>2x+1</td><td>x</td><td>x+2</td><td>x+1</td></tr><tr><td>x</td><td>0</td><td>x</td><td>2x</td><td>2</td><td>x+2</td><td>2x+2</td><td>1</td><td>x+1</td><td>2x+1</td></tr><tr><td>x+1</td><td>0</td><td>x+1</td><td>2x+2</td><td>x+2</td><td>2x</td><td>1</td><td>2x+1</td><td>2</td><td>x</td></tr><tr><td>x+2</td><td>0</td><td>x+2</td><td>2x+1</td><td>2x+2</td><td>1</td><td>x</td><td>x+1</td><td>2x</td><td>2</td></tr><tr><td>2x</td><td>0</td><td>2x</td><td>x</td><td>1</td><td>2x+1</td><td>x+1</td><td>2</td><td>2x+2</td><td>x+2</td></tr><tr><td>2x+1</td><td>0</td><td>2x+1</td><td>x+2</td><td>x+1</td><td>2</td><td>2x</td><td>2x+2</td><td>x</td><td>1</td></tr><tr><td>2x+2</td><td>0</td><td>2x+2</td><td>x+1</td><td>2x+1</td><td>x</td><td>2</td><td>x+2</td><td>1</td><td>2x</td></tr></table>
    - There is a subfield that doesn't involve x at all
    - This took far too long for me to work out by hand
    - Has the Roman square property
    - Perfectly good field, F<sub>9</sub>
    - One could check if it is a primitive polynomial
- The irreducible polynomial looks just like the one picked to extend &rationals;
- It turns out the only quadratic polynomials for the binaries that don't have an x term are:
    - x<sup>2</sup>; x<sup>2</sup> + 1; and x<sup>2</sup> + x + 1 
    - The binaries are a bit short of numbers...
    
##Exam Question Time
- LFSRs are very popular for a variety of reasons
- A proper exam question 
- Irreducible polynomial has NO FACTORS
    - Straight away we know it won't have linear factors 
    - Won't have a factor of the form (x+1) or x
    - If it did have the factor (x+1) then the value 1 would result in zero!
- Simple rules:
    - Must have plus one on the end
        - Without a constant term, you can divide out a factor of x 
    - Must have an odd number of terms (including constant)
        - an even number of binary ones added up is always zero
- With this we can immediately rule out many options
- Question 5a) 20013
- [https://www.dropbox.com/s/1zqj6na05lt3uhe/Screenshot%202014-04-28%2013.54.30.png]
    - f1 -- Has an even number of terms, so has a linear factor
    - f3: 
        - can be a linear * a quadratic 
        - can be a linear * a linear * a linear 
        - We already know there is no linear factor -- So it is irreducible
    - f2: 
        - Must be a quadratic * a quadratic
        - The only quadratic irreducible is x<sup>2</sup> + x + 1
        - (x<sup>2</sup> + x + 1)<sup>2</sup> 
        - = x<sup>4</sup> + x<sup>3</sup> + x<sup>2</sup> + x<sup>3</sup> + x<sup>2</sup> + x + x<sup>2</sup> + x + 1
        - = x<sup>4</sup> + x<sup>2</sup> + 1
         - Dat cancellation
            - This is the only reducible polynomial of order 4?
        - Since it isn't this, f2 isn't reducible
- f2 and f3 are both irreducible, so will build good fields
- f2 builds F<sub>16</sub> (field of 16 elements) 
- f3 builds F<sub>8</sub>
    - This is because of binaries:
    - 0 = 0000, 1 = 0001 etc gives us 2<sup>n</sup> possibilities
- f2 is the only one with enough bits to work 
- x<sup>4</sup> + x<sup>3</sup> + 1 = 0
    - 0: 0000 -- 0
    - 1: 0001 -- 1
    - 2: 0010 -- x
    - 3: 0011 -- x + 1
    - 4: 0100 -- x<sup>2</sup>
    - 5: 0101 -- x<sup>2</sup> + 1
    - 6: 0110 -- x<sup>2</sup> + x
    - 7: 0111 -- x<sup>2</sup> + x + 1
    - 8: 1000 -- x<sup>3</sup>
    - 9: 1001 -- x<sup>3</sup> + 1
    - A: 1010 -- x<sup>3</sup> + x
    - B: 1011 -- x<sup>3</sup> + x + 1
    - C: 1100 -- x<sup>3</sup> + x<sup>2</sup>
    - D: 1101 -- x<sup>3</sup> + x<sup>2</sup> + 1
    - E: 1110 -- x<sup>3</sup> + x<sup>2</sup> + x
    - F: 1111 -- x<sup>3</sup> + x<sup>2</sup> + x + 1
- This is C<sub>15</sub> (for multiplicative group)
- There must be an element that is a generator 
    - The multiplicative group of a field is cyclic
    - In an exam, you can just say, it's got 15 elements, it has got to be cyclic
    - No repeated factors...
- Not all elements of C<sub>15</sub> are generators 
    - For example 5:
        - 5+5=10; 10+5 =0
    - Similarly 3:
        - 3+3=6; 6+3=9; 9+3=12; 12+3=0
- But others are fine: 
    - Any number that isn't divisible by 3 or 5 is a generator
    - i.e. 1, 2, 4, 7, 8, 11, 13, 14
    - The factor of the prime factor is the issue
- In the multiplicative group, 1 isn't a generator
- To make it primitive, x must be a generator
    - x is a generator when:
        - x<sup>3</sup> != 1
        - x<sup>5</sup> != 1
    - The order of an element has to divide the order of the group
    - We can see that x<sup>3</sup> != 1
        - Because it is something well defined
    - x<sup>5</sup> = x&middot;x<sup>4</sup>= x(x<sup>3</sup> + 1) = x<sup>4</sup> + 1 = x<sup>3</sup> + 1 + x != 1
        - NOTE: x<sup>4</sup> + x<sup>3</sup> + 1 = 0 implies x<sup>4</sup> = x<sup>3</sup> + 1 because for binary + = -
    - Thus x<sup>5</sup> is not one!
- So: x<sup>4</sup> + x<sup>3</sup> + 1 = 0
    - Is irreducible
    - Is primitive
        - i.e. x is a generator
    - Has the minimum number of terms
- There are tables of this stuff

##LFSRs
- Linear Feedback Shift Registers
- Initialization is important
    - You can't start off with all zeros   
- Must choose a primitive polynomial   
    - Should be multiplying by x?
    - Multiplication by x just requires a shift

###Galois Form
- Galois was the first person to really study fields and Groups and things
- It usually means that it is explicitly based on this arithmetic of the finite field

##There is now a diagram, I'll copy it later...

- x<sup>4</sup> = x<sup>3</sup>, so we have to shift in a one when it plops out the end


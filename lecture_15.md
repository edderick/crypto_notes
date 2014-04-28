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
            - This is the only reducible polynomial of order 4?
        - Since it isn't this, f2 isn't reducible
- f2 and f3 are both irreducible, so will build good fields
- f2 builds F<sub>16</sub> 
- f3 builds F<sub>8</sub>


- @16:05

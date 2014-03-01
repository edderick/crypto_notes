Week Two
========

Lecture 4
---------

*Lecture: Mon 3rd February 2014  -  Today: Tue 18th February 2014*

### Some Notes About Manual Ciphers

-   By the 1930s we began using electrical machines
-   You need to be able to use codes & ciphers when under stress
-   Get your message out and burn the codebooks before the red guard
    burst in
-   You want manual ciphers to be robust to errors:
    -   One small mistake will only cause a small localised error
    -   Vigenere cipher - if you lose a character then you lose the
        message
    -   Cipher clarks probably won't know how to fix the message
-   The messages need to actually arrive!
    -   No point encrypting it if noone will ever receive it
    -   If it didn't need to be told, you just wouldn't tell anyone
-   Distributing equipment is very difficult
-   If the enemy capture a code machine...
-   Usually you make it very hard to steal
    -   Nail it down
    -   Self destruction
-   Owning a one time pad is a bit of a giveaway that you are a spy
    -   Concealing it in a hairbrush handle
-   Security only needs to be good enough
    -   Tomorrows invasion plans only needs two days worth of protection
        against cracking
    -   This is a bit misleading, there may be other information
        included that you don't want to share
    -   This could lead to a crib...
-   You know what the message probably said based on what happened
    -   Similar to the weather ship technique
-   When the Edward Snowden slides first came out people showed of their
    graphic design skills by making slick versions of the slides
-   But the real issue was the auxiliary information that had no reason
    to be on the slides
-   David Khan's "The Code Breakers" -- standard text of classical
    cryptanalysis
-   Room 40 in the navy...
-   Army bad, Navy good, Air Force didn't exist

### Enigma Machine

- Enigma was a particularly interesting case
    -   Cracking it probably helped us win the war
    -   Predicting U-boat movements was helpful
- Commercial machines
- Military version was strengthened by the addition of a plug board
- Could buy one for about £100,000
- They have a variable number of rotors: usually three or four
    -   The rotors can also be shuffled
    -   And there may be extra "spare" rotors
- This leads to around 26\^4 keys (\~18 bits..)
- Press a key on the keyboard, and a corresponding letter lights up
- Fully symmetric:
    -   If you get two machines in the same starting state
    -   Enter plaintext in one → Ciphertext
    -   Enter ciphertext in the other → Plaintext
- Typically enter messages in as five character groups
    -   Allows us to work out quickly where the error was
    -   Worst case 5 letters wrong (Per mistake)
- An electromechanical device
- One each key press two things happen
- Closes a switches
    -   Rotates one of the wheels -- When you rotate one wheel 26 times, the
        next one rotates
    -   The sets of contacts in the wheels jumble things up
- Mapping of contacts permutes the letters
- By going both ways across the wheels, decryption and encryption are the
same
- One interesting feature is that the letter cannot be enciphered to
itself
    -   This lets you know that a message **CAN'T** be the message
    -   If any letters match up, we know the candidate plaintext is wrong
    -   Or, we have part of a crib, we can shift it around until it doesn't
        match up
- Really not enough keys by default
- Just get a big group of Indians to do it
- The plug board was used to increase the keyspace
- Shuffle letters up in a monoalphabetic substitution
- An extra fixed permutation - e.g. Swap 's' and 't'
- This dramatically increases the number of keys
    -   Just one plug multiplies the number of keys by (26 \* 25) / 2
    -   Most of the complexity of the cipher actually comes from the plug
        board
    -   Without the other part though we could just use frequency analysis
- Summary:
    -   Most of the key space is in the plugboard
        -   But we can crack that easily with frequency analysis
    -   The rotors on their own would be very weak
        -   But aren't susceptible to frequency analysis
    -   Together we get the best of both worlds
    -   To attack this we need to factor the problem
        -   Wheels and plugboard attacked separately
    -   Thanks Poles!

### Colossus & Tunny/Fish

-   Colossus was the code name for the computer used to attack tuny (a
    teleprinter code)
-   Did all the encryption and decryption for you

### Venona

-   Venona, breaks into the manual crypto system used by the Russians
-   1942 onwards - Americans break Soviet ciphers

### Tangents

#### RADAR

-   After the war RADAR was a big deal
-   Microwave RADAR (few cm wavelengths)
-   Can pick up small up small structures
    -   Periscopes
-   Was difficult to get high enough power
-   Resolved by the invention of the Cavity Magnetron
-   H2S
-   Note: you may have Cavity Magnetron
    -   They exist in Microwave ovens
    -   They are like a referee's whistle for Microwaves
    -   You can use a Cavity magnetron as an amateur radio
-   Radiation is bad for your eyes
    -   Your brain is probably fine; It's all about the blood supply
-   NEVER LOOK DOWN A MICROWAVE WAVE GUIDE

#### Teleprinters

-   Were all the rage in the 70s
-   They have lots of them in cold war bunkers
-   Denis used to hang about in cold war bunkers
    -   Home office advisor

#### Bagpipes on a Boat

-   British embassy wasn't attacked once because we got a bagpiper to
    scare people away
-   Denis once went on a boat with a bag piper

#### Spy Stories

-   Venona was the inspiration for all the great spy stories of the
    1950s
-   You should watch Tinker Tailor Solider Spy...
-   It's kinda a true story - names changed to protect the guilty
-   There were lots of spies, they did stuff
-   There is also "A Small Town in Germany" -- Short story

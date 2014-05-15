Lecture 23
----------

*Lecture: Mon 24th March 2014  -  Today: Sun 27th April 2014*

###Denis is Back Again!

- What did you guys do with Basel then?
- Done AES, done DES
- Cryptographic modes:
    - ECB -- Electronic Code Book
        - Obviously stupid
        - Repeated blocks in pt are repeated blocks in ct
    - GCM -- Gallois Counter Mode
        - This is what everyone should use
        - Not as widely supported as you might like 
        - Counter that jumps around massively
    - OFB -- Output Feedback    
    - CBC -- Cipher Block Chaining
        - This is what everyone uses 
        - Just uses the output of the previous block as the IV
- Two things go into a block cipher: 
    - Key 
    - Initialisation Vector (IV)
        - Random number.. Need to share this.
        - Prevents ECB trouble, blocks encrypt to different things
        - Or could use a counter 
- Problems with chaining:
    - There are vulnerabilities 
    - Can't be decrypted quickly
        - Block to Block dependency
        - Cannot be processed in parallel
    - Ideally you would have a scheme where can predict the IVs
- Compression
    - Information theory -- entropy
        - Entropy is a measure of how predictable the data is
        - High entropy data is unpredictable
        - Not a measure of the actual information content..
        - Random noise has very high entropy
            - No distinction between useful information, and useless noise 
    - Two kinds of compression
        - Lossy 
            - e.g. PNG
        - Lossless
            - e.g. JPG
        - MUST USE THE RIGHT KIND OF COMPRESSION
            - A binary executable must be compressed with lossless compression
            - Every bit is sacred
        - If there is significant amounts of noise
            - You don't mind losing noise
            - But you can't compress noise losslessly
                - There is no structure in the data
                - Patterns are what allows compression to happen
            - NOISE DOESN'T COMPRESS
                - Feed white noise to a lossless compression, and it will get longer
                - Well, it might be compressible by chance...
    - Lossless compression isn't objectively better than lossy!
    - LZW
        - Add an extra string to set of strings if you haven't seen it before
    - Often assume there is a lot of unimportant information in the high frequency domain
    - With televisions, there is wasted information in the colour domain
        - Analogue TV has more brightness than colour 
        - Structure in the datastream...
        - Periodic at around 16kHz
    - Hamming -- Character frequency
    - Lossy compression is often quite clever!
        - Can do incredibly good speech compression  
- And that's pretty much it, mate.
- Ha, Denis thinks we did Gallois counter mode?

####Insert diagram of an LFSR here.
- The one he drew has 4 flip flops, and has a period of 15 (2^n -1)

- Linear Feedback Shift Registers (LFSRs) 
    - Are popular 
    - People think they are cute
    - Denis draws his diagrams with D, Q and CLK
    - Baby's first VHDL..
    - Made out of things even Computer Scientists know
    - Signal has fairly nice properties
        - Used to modulate radio broadcasts to allow frequency hopping
        - Direct sequence spread spectrum 
        - Need to work out initialisation
    - May want to draw an asynchronous preset
    - One problem:
        - Since the period is an odd number, there can't be equal 1s and 0s
        - Because a zero is missing
        - Can feed it through a low pass filter 
        - And retrieve the average voltage
            - Work out the biases (ex: 1/15!)
        - Can try to calculate the size of the LFSR
    - Good spectral properties for comms purposes
    - But they aren't really cryptographically secure!
- Maybe one day we will see Berlekamp-Massey
    - LOLOLOLOLOL   
    - With 2n bits of the sequence, you can quickly work out the configuration of the LFSR
- Denis really doesn't seem to like LFSRs
- Myfare classic cards use LFSRs
    - Some grad students took a card apart and found how it is made
    - Took lots of microscope photographs of the chip, as they ground it away
    - Reverse engineered the whole chip 
- There is a piece of hardware you can get, there is an expensive one...
    - That can act as a card or a reader
    - It can work out what the secret keys are
    - And give you sport rec for free
- GSM 
    - A5/1 -- standard for GSM
    - Three LFSRs stuck together
        - Some randomisation of the clocking
        - Clock pulse only shifts sometimes
    - A vain attempt to make a hopelessly insecure system look alright
        - The French gvmnt actually made it weaker...
- That's what keeps your phonecalls private
- Not what makes sure you don't steal from the phone companies
- Pretty easy to just sit and listen to all the GSM traffic

###Tangents 
####Brain Holes
- Drill a hole in the skull to let the pressure out
- This is a really stupid tangent!
 
####Mt Gox
- Hiding things under the bed is a good idea
    - RE: Mt. Gox
- He probably has some mafia bosses who hate him now

####ID Cards
- Hey everyone here's Denis' ID number 1 1187481
- He fuzzed his key though
    - Actually went in with paint and removed the dimples!
- Denis thinks his key is pretty damn secure...
    - Lock pickers, do your worst! 
- But you could probably kick down the interior doors...
- They can't do you for carrying around your shoulder
- Really the serious security should be on the building perimeter

####Phone Hacking
- Wasn't really hacking
- Was just journalists logging into mailboxes with default passwords

####Nuclear Launch Codes
- Congress wanted some security in place to prevent Dr Strangelove
- Military wanted to be able to respond quickly
- Launch codes set to 00000000
- Brits used physical keys instead...

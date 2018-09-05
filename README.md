# Documentation

[How it works](http://practicalcryptography.com/ciphers/enigma-cipher/)

[Rotor Wiring Tables](https://en.wikipedia.org/wiki/Enigma_rotor_details#Rotor_wiring_tables)

[The enigma procedure](http://users.telenet.be/d.rijmenants/en/enigmaproc.htm)

## Where to start

- You have a Enigma machine with:
	- 1 plugboard
	- 1 Ring Settings for the Rotors
	- 3 Rotors
	- 1 rotor order
	- 1 Reflector
	- 1 turnover nothc position

## Example

### Initial settings

- Plugboard: 

		PO ML IU KJ NH YT GB VF RE DC

- Rotors

			  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

		I	  E K M F L G D Q V Z N T O W Y H X U S P A I B R C J

		II	  A J D K S I R U X B L H W T M C Q G Z N P Y F V O E

		III	  B D F H J L C P R T X V Z N Y E I W G A K M U S Q O

- Reflector

			  Y R U H Q S L D P X N G O K M I E B F Z C W V J A T

- Ring settings:

		AAA

- The turnover notch position is set like so:

		I	Q
		II	E
		III	V
		
### Practice

Let's encrypt A

- 1 plugboard
		
		A becomes A
		
- 1 rotor configuration

		- 1 Ring Settings for the Rotors (AAA)
		- 3 Rotors
		- 1 rotor order (I II III)

	- When going through the rotor III

				  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

			III	  E K M F L G D Q V Z N T O W Y H X U S P A I B R C J

			Notch:	  NO (If rotor steps from Q to R, the next rotor is advanced)
			
			A becomes E
	
	- When going through the rotor II

				  A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

			II	  A J D K S I R U X B L H W T M C Q G Z N P Y F V O E
			
			Notch YES (If rotor steps from E to F, the next rotor is advanced)
			
			E becomes S

	- When going through the rotor I

					A B C D E F G H I J K L M N O P Q R S T U V W X Y Z

			I	   B D F H J L C P R T X V Z N Y E I W G A K M U S Q O
			
			
			A becomes G


- 1 Reflector
						
					A B C D E F G H I J K L M N O P Q R S T U V W X Y Z
		
					Y R U H Q S L D P X N G O K M I E B F Z C W V J A T
					
			G becomes L


- 1 turnover notch position



= A ==> U

<!-- Rotor 3  -->
ABCDEFGHIJKLMNOPQRSTUVWXYZ
BDFHJLCPRTXVZNYEIWGAKMUSQO

= B / U

<!-- Rotor 2  -->
ABCDEFGHIJKLMNOPQRSTUVWXYZ
AJDKSIRUXBLHWTMCQGZNPYFVOE

= J / K

<!-- Rotor 1  -->
ABCDEFGHIJKLMNOPQRSTUVWXYZ
EKMFLGDQVZNTOWYHXUSPAIBRCJ

= Z / L

<!-- Reflector  -->
ABCDEFGHIJKLMNOPQRSTUVWXYZ
YRUHQSLDPXNGOKMIEBFZCWVJAT

= T

## Definitions

### Plugboard
PO ML IU KJ NH YT GB VF RE DC

### Ring settings:
The ringstellung provide the capability of shifting the traditional alphabet from a given position (AAA)

### Rotors
      ABCDEFGHIJKLMNOPQRSTUVWXYZ
I	    EKMFLGDQVZNTOWYHXUSPAIBRCJ
II	  AJDKSIRUXBLHWTMCQGZNPYFVOE
III	  BDFHJLCPRTXVZNYEIWGAKMUSQO

### The turnover notch position is set like so:
Each rotor has a notch which causes the rotor to its left to step

I	  Q	 If rotor steps from Q to R, the next rotor is advanced
II	  E	 If rotor steps from E to F, the next rotor is advanced
III	  V	 If rotor steps from V to W, the next rotor is advanced

Notches for:
Rotor 1 is R
Rotor 2 is F
Rotor 3 is W

### Reflector
Reflector B
      ABCDEFGHIJKLMNOPQRSTUVWXYZ
      YRUHQSLDPXNGOKMIEBFZCWVJAT


# Settings:

--------------------------------------------------------------



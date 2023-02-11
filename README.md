# hiWireshark

# Plan

1. auto generate makefile script
1. 
1. 
1. 

# Emoj

- ❌ 
- ✅
- 😎
ma

# Research - c key feature

- Procedural Language
- Quick and Effective
- Easy to Extend
- Statically Type
- Modularity
- Middle-Level Language
- low-level memory access
- Libraries with rich Functions
- Portability
- General-Purpose Language
- Rich set of built-in Operators

# Research - c network related package

- htonl
- ntohs
- nothl
- htons
- send
- sendto
- sendmsg
- write
- 

# Research - [c format specifier](https://www.geeksforgeeks.org/format-specifiers-in-c/)

| % | Use | Assign | Input | output |
|---|-----|--------|-------|--------|
| %c | Character | ch = 'A'; | ch | A |
| %d %i | Signed Integer | x = 45; | x | 45 |
| %u | Unsigned Integer |  | -10, 10 | 4294967286, 10 |
| %f | Floating-point | a = 12.67; | a | 12.670000 |
| %e | Floating-point | a = 12.67; | a | 1.267000e+01 |
| %E | Floating-point | a = 12.67; | a | 1.267000E+01 | 
| %o | Unsigned Octal number | int a = 67; | a | 103 |
| %x %X | Unsigned Hexadecimal | int a = 15; | a | f |
| %s | String printing | char a[] = "aaa" | a | aaa |
| %p | Address Printing | int a = 10; | (void*)&a | 0x7ffc85861624 |
| %20s | other | char str[] = "geeksforgeeks"; | str |        geeksforgeeks |
| %-20s | other | char str[] = "geeksforgeeks"; | str | geeksforgeeks        |
| %20.5s | other | char str[] = "geeksforgeeks"; | str |                geeks |
| %-20.5s | other | char str[] = "geeksforgeeks"; | str | geeks |

# Research - wireshark feature

- Packet Capture: Wireshark listens to a network connection in real time and then grabs entire streams of traffic – quite possibly tens of thousands of packets at a time.
- Filtering: Wireshark is capable of slicing and dicing all of this random live data using filters. By applying a filter, you can obtain just the information you need to see.
- Visualization: Wireshark, like any good packet sniffer, allows you to dive right into the very middle of a network packet. It also allows you to visualize entire conversations and network streams.

# Research - Wireshark has a rich feature set which includes the following:

- Deep inspection of hundreds of protocols, with more being added all the time
- Live capture and offline analysis
- Standard three-pane packet browser
- Multi-platform: Runs on Windows, Linux, macOS, Solaris, FreeBSD, NetBSD, and many others
- Captured network data can be browsed via a GUI, or via the TTY-mode TShark utility
- The most powerful display filters in the industry
- Rich VoIP analysis
- Read/write many different capture file formats: tcpdump (libpcap), Pcap NG, Catapult DCT2000, Cisco Secure IDS iplog, Microsoft Network Monitor, Network General Sniffer® (compressed and uncompressed), Sniffer® Pro, and NetXray®, Network Instruments Observer, NetScreen snoop, Novell LANalyzer, RADCOM WAN/LAN Analyzer, Shomiti/Finisar Surveyor, Tektronix K12xx, Visual Networks Visual UpTime, WildPackets EtherPeek/TokenPeek/AiroPeek, and many others
- Capture files compressed with gzip can be decompressed on the fly
- Live data can be read from Ethernet, IEEE 802.11, PPP/HDLC, ATM, Bluetooth, USB, Token Ring, Frame Relay, FDDI, and others (depending on your platform)
- Decryption support for many protocols, including IPsec, ISAKMP, Kerberos, SNMPv3, SSL/TLS, WEP, and WPA/WPA2
- Coloring rules can be applied to the packet list for quick, intuitive analysis
- Output can be exported to XML, PostScript®, CSV, or plain text


# Research - Network Basic

| Name | What is it? | What it do? | Note |
|------|------------|--------------|------|
| TCP (Transmission control protocol) | intermediate layer of the application layer and internet protocol layer | - creates a connection before transmit data <br> - big data to small before send <br> - reassembling at destination <br> - retransmission <br>  | - the client begins the communication and establishes a connection with a server <br> |


# Research - [Steps to create a client using TCP/IP  API](https://aticleworld.com/socket-programming-in-c-using-tcpip/)

- Create a socket with the socket() system call.
- Initialize the socket address structure as per the server and connect the socket to the address of the server using the connect() system call.
- Receive and send the data using the recv() and send().
- Close the connection by calling the close() function.


# Research - Steps to create a server using TCP/IP API

- Create a socket with the socket() system call.
- Initialize the socket address structure and bind the socket to an address using the bind() system call.
- Listen for connections with the listen() system call.
- Accept a connection with the accept() system call. This call typically blocks until a client connects to the server.
- Receive and send data by using the recv() and send().
- Close the connection by using the close().


# Research - [Bash script note](https://devhints.io/bash)

<!-- Conditionals  -->
``` Bash
if [[ -z "$string" ]]; then
    echo "String is empty"
elif [[ -n "$string" ]]; then
    echo "String is not empty"
fi
```

<!-- string quote -->
```Bash
name="John"
echo "Hi $name"  #=> Hi John
echo 'Hi $name'  #=> Hi $name
```

<!-- Shell execution -->
```Bash
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
```

<!-- Strict mode -->
```Bash
set -euo pipefail
IFS=$'\n\t'
```

<!-- Variables -->
```Bash
name="John"
echo $name  # see below
echo "$name"
echo "${name}!"
```

<!-- Generally quote your variables unless they contain wildcards to expand or command fragments. -->
```Bash
wildcard="*.txt"
option="iv"
cp -$options $wildcard /tmp
```

<!-- Functions -->
```Bash
get_name() {
  echo "John"
}

echo "You are $(get_name)"
```

<!-- Brace expansion -->
```Bash
echo {A,B} 	    #Same as A B
echo {A,B}.js 	#Same as A.js B.js
echo {1..5} 	#Same as 1 2 3 4 5
echo {1..5..2} 	#1 3 5
```

<!-- comment -->
```Bash
# Single line comment

: '
This is a
multi line
comment
'
```

<!-- Substrings -->
```Bash
foo="012345"
echo ${foo:0:3} 	#Substring (position, length) -> p12
echo ${foo:(-3):3} 	#Substring from the right -> 345
```

<!-- Length -->
```Bash
foo="123456"
echo ${#foo} #->6
```

<!-- Default values -->
```Bash
${foo:-val} 	    #$foo, or val if unset (or null)
${foo:=val} 	    #Set $foo to val if unset (or null)
${foo:+val} 	    #val if $foo is set (and not null)
${foo:?message} 	#Show error message and exit if $foo is unset (or null)
# Omitting the : removes the (non)nullity checks, e.g. ${foo-val} expands to val if unset otherwise $foo.

```

<!-- Raising errors -->
```Bash
myfunc() {
  return 0
}

if myfunc; then
  echo "success" # 0-success
else
  echo "failure" # 1-success
fi
```

<!-- String condition -->
```Bash
[[ -z STRING ]] 	    #Empty string
[[ -n STRING ]] 	    #Not empty string
[[ STRING == STRING ]] 	#Equal
[[ STRING != STRING ]] 	#Not Equal
[[ NUM -eq NUM ]] 	    #Equal
[[ NUM -ne NUM ]] 	    #Not equal
[[ NUM -lt NUM ]] 	    #Less than
[[ NUM -le NUM ]] 	    #Less than or equal
[[ NUM -gt NUM ]] 	    #Greater than
[[ NUM -ge NUM ]] 	    #Greater than or equal
[[ STRING =~ STRING ]] 	#Regexp
(( NUM < NUM )) 	    #Numeric conditions
[[ -o noclobber ]] 	    #If OPTIONNAME is enabled
[[ ! EXPR ]] 	        #Not
[[ X && Y ]] 	        #And
[[ X || Y ]] 	        #Or
```

<!--  -->
```Bash

```

<!-- Array -->
```Bash
Fruits=('Apple' 'Banana' 'Orange')

Fruits[0]="Apple"
Fruits[1]="Banana"
Fruits[2]="Orange"
```

<!-- Array operation -->
```Bash
Fruits=("${Fruits[@]}" "Watermelon")    # Push
Fruits+=('Watermelon')                  # Also Push
Fruits=( "${Fruits[@]/Ap*/}" )          # Remove by regex match
unset Fruits[2]                         # Remove one item
Fruits=("${Fruits[@]}")                 # Duplicate
Fruits=("${Fruits[@]}" "${Veggies[@]}") # Concatenate
lines=(`cat "logfile"`)                 # Read from file
```

<!--  -->
```Bash


echo "${Fruits[0]}"           # Element #0
echo "${Fruits[-1]}"          # Last element
echo "${Fruits[@]}"           # All elements, space-separated
echo "${#Fruits[@]}"          # Number of elements
echo "${#Fruits}"             # String length of the 1st element
echo "${#Fruits[3]}"          # String length of the Nth element
echo "${Fruits[@]:3:2}"       # Range (from position 3, length 2)
echo "${!Fruits[@]}"          # Keys of all elements, space-separated
```

<!-- iteration -->
```Bash
for i in "${arrayName[@]}"; do
  echo "$i"
done
```

<!-- dictionary -->
```Bash
declare -A sounds

sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"
```

<!-- Working with dictionaries -->
```Bash
echo "${sounds[dog]}" # Dog's sound
echo "${sounds[@]}"   # All values
echo "${!sounds[@]}"  # All keys
echo "${#sounds[@]}"  # Number of elements
unset sounds[dog]     # Delete dog
```

<!-- Iterate over values -->
```Bash
for val in "${sounds[@]}"; do
  echo "$val"
done
```

<!-- Iterate over keys -->
```Bash
for key in "${!sounds[@]}"; do
  echo "$key"
done
```


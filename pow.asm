# pow.asm program
#

# C++ (NON-RECURSIVE) code snippet of pow(x,n):
#   int x, n, pow=1; 
#   cout << "Enter a number x:\n"; 
#   cin >> x;
#   cout << "Enter the exponent n:\n"; 
#   cin >> n; 
#   for (int i = 1; i <= n; i++) { 
#   	pow = pow * x; 
#   } 
#   cout << "Power(x,n) is:\n" << pow << "\n";
#
# Assembly (NON-RECURSIVE) code version of pow(x,n):
#
.data
	str1: .asciiz "Enter a number x:\n"
	str2: .asciiz "Enter the exponent n:\n"
	str3: .asciiz "Power(x,n) is:\n" << pow << "\n"


	# TODO: Write your initializations here

#Text Area (i.e. instructions)
.text
main:
la $a0,str1 #Load and print string asking for num
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t0, $v0   #put int in t0

la $a0,str1 #Load and print string asking for num
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t1, $v0   #put int in t0
	
	# TODO: Write your code here

exit:
	# TODO: Write code to properly exit a SPIM simulation

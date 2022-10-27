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
	str3: .asciiz "Power(x,n) is:\n"


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

la $a0,str2 #Load and print string asking for num
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t1, $v0   #put int in t1

add $t2,$zero,$zero 
addi $t3,$t3,1
power: 
	beq $t2, $t1, exit   
        mul $t3,$t3,$t0         # multiple $v0 and $a0 into $v0 
        addi $t2,$t2,1          # update the value of $t2   
        j   power
	
	# TODO: Write your code here

exit:
	
	        # TODO: Write code to properly exit a SPIM simulation
        la $a0,str3 #Load and print string "Power(x,n) is:\n"
        li $v0,4
        syscall
             move $a0, $t3
            li $v0,1  "print value from t3 moved into a0
            syscall
        	li $v0, 10
	syscall

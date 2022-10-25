# min.asm program
#

.data

        # TODO: Complete these declarations / initializations

        str1: .asciiz "Enter the next number:\n"
        str2: .asciiz "Minimum: "
    str3: .asciiz "\n"

#Text Area (i.e. instructions)
.text

main:
la $a0,str1 #Load and print string asking for num
li $v0,4
syscall
la $a0,str2 #Load and print nextline
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t0, $v0   #put int in t0

        # TODO: Write your code here
    # You can have other labels expressed here, if you need to

exit:
        # TODO: Write code to properly exit a SPIM simulation
        	li $v0, 10
	syscall

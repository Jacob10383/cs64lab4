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
li $v0, 5   #read in int
syscall
move $t0, $v0   #put int in t0

la $a0,str1 #Load and print string asking for num
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t1, $v0   #put int in t0



la $a0,str1 #Load and print string asking for num
li $v0,4
syscall
li $v0, 5   #read in int
syscall
move $t2, $v0   #put int in t0
blt $t0, $t1, one
blt $t1, $t2, four
j five
one:
blt $t0, $2, two
j three
two:
move $t3, $t0
j exit
three:
move $t3, $t2
j exit
four:
move $t3, $t1
j exit
five:
move $t3, $t2
j exit


        # TODO: Write your code here
    # You can have other labels expressed here, if you need to

exit:
        # TODO: Write code to properly exit a SPIM simulation
        la $a0,str2 #Load and print string asking for num
        li $v0,4
        syscall
            li $v0,1
            move $a0, $t3
            syscall
        	li $v0, 10
	syscall
    

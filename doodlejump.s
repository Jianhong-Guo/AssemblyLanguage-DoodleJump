#####################################################################
#
# CSC258H5S Fall 2020 Assembly Final Project
# University of Toronto, St. George
#
# Student: Jianhong Guo, 1004436862
#
# Bitmap Display Configuration:
# - Unit width in pixels: 8
# - Unit height in pixels: 8
# - Display width in pixels: 256
# - Display height in pixels: 256
# - Base Address for Display: 0x10008000 ($gp)
#
# Which milestone is reached in this submission?
# (See the assignment handout for descriptions of the milestones)
# - Milestone 1/2/3/4/5 (choose the one the applies)
# Milestone 1, 2, 3, 4a, 4b, 5d, 5e, 5g
# Which approved additional features have been implemented?
# (See the assignment handout for the list of additional features)
# 1. (fill in the feature, if any)
# 2. (fill in the feature, if any)
# 3. (fill in the feature, if any)
# ... (add more if necessary)
#
# Any additional information that the TA needs to know:
# - (write here, if any)
#
#####################################################################

.data
displayAddress: .word 0x10008000  # the default address
step: .space 16  # store the platform


.text  
     # some information that never change
    lw $t0, displayAddress # $t0 stores the base address for display
    li $t1, 0xfffff0 # $t1 stores the white colour code
    li $t2, 0x00ff00 # $t2 stores the green colour code
    li $t3, 0x0000ff# $t3 stores the blue colour code
    li $a3, 0xff00ff # a3 stores the pink colour code
# print the whole background with t1 colour   
      addi $t4, $zero, 1024 # set t4 to 1024
       add $t5, $zero, $zero # set t5 to 0
       addi $t6, $t0, -4      # set t6 be the address that 4 less than t0
START23: beq $t4, $t5, EXIT23    # check if t4 and t5 equal
       sw $t1, 4($t6)      # paint $t6 + 4 to be t1 colour
      addi $t6, $t6,4       # t6 increase 4
UPDATE23:addi $t5, $t5,1      # t5 increase 1
       J START23           # go to START23
EXIT23:  
    # add "name:" in the background   
    # add "N"
    addi $t6, $t0, 132
    li $t9, 0x000000
    sw $t9, 0($t6)
    sw $t9, 4($t6)
    sw $t9, 8($t6)
    sw $t9, 128($t6)
    sw $t9, 136($t6)
    sw $t9, 256($t6)
    sw $t9, 264($t6)
    sw $t9, 384($t6)
    sw $t9, 392($t6)
    sw $t9, 512($t6)
    sw $t9, 520($t6)
    addi $t6, $t6, 16
# add "A"    
    sw $t9, 0($t6)
    sw $t9, 4($t6)
    sw $t9, 8($t6)
    sw $t9, 128($t6)
    sw $t9, 136($t6)
    sw $t9, 256($t6)
    sw $t9, 260($t6)
    sw $t9, 264($t6)
    sw $t9, 384($t6)
    sw $t9, 392($t6)
    sw $t9, 512($t6)
    sw $t9, 520($t6)
    addi, $t6, $t6, 16
# add "m"    
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 520($t6)
sw $t9, 268($t6)
sw $t9, 272($t6)
sw $t9, 400($t6)
sw $t9, 528($t6)
addi, $t6, $t6, 24
# add "e"    
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 8
# add ":"
sw $t9, 264($t6)
sw $t9, 520($t6) 
# print "next: A" to the background 
# add "n"    
addi $t6, $t0,2052
li $t9, 0x0ff00f
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16
# add "e"   
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
    
# add "x"    
sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 388($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
# add "t"   
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 132($t6)
sw $t9, 260($t6)
sw $t9, 388($t6)
sw $t9, 516($t6)
addi, $t6, $t6, 8
# add ":"
    sw $t9, 264($t6)
    sw $t9, 520($t6)
     
#add "A" 
    
addi, $t6, $t6, 16   
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16
# add "exits: E" to the background
# add "e"      
addi $t6, $t0,3080
li $t9, 0xff00000
       
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
# add "x"
sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 388($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
# add "i"
sw $t9, 0($t6)
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 8
#add "s"       
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16   
# add "t"
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 132($t6)
sw $t9, 260($t6)
sw $t9, 388($t6)
sw $t9, 516($t6)
addi, $t6, $t6, 8
#add ":E"
sw $t9, 264($t6)
sw $t9, 520($t6) 
addi, $t6, $t6, 16   
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
# prepare for name to be print         
li $t9, 0x0f0ff0
addi $t6, $t0,1024
addi $t7, $zero,0

# print name, at most 5 letters    
NAME:   beq $t7, 6, GAME
        lw $t8, 0xffff0000   # t8 stores the address
        beq $t8,1,INPUT   #chcek if there has any keyboard input
        J NAME # go to NAME

# Start game    
GAME:    
       # paint the background
       addi $t4, $zero, 1024 # set t4 to 1024
       add $t5, $zero, $zero # set t5 to 0
       addi $t6, $t0, -4      # set t6 be the address that 4 less than t0
START20: beq $t4, $t5, EXIT20    # check if t4 and t5 equal
       sw $t1, 4($t6)      # paint $t6 + 4 to be t1 colour
      addi $t6, $t6,4       # t6 increase 4
UPDATE20:addi $t5, $t5,1      # t5 increase 1
       J START20           # go to START20
EXIT20:  
     # add doodle
     addi $t6, $t0, 128
     sw $a3, 4($t6) 
     sw $a3, 12($t6)
     sw $t3, 132($t6) 
     sw $a3, 136($t6) 
     sw $t3, 140($t6) 
     sw $a3, 260($t6)
     sw $a3, 264($t6)
     sw $a3, 268($t6)
     sw $a3, 388($t6)
     sw $t3, 392($t6)
     sw $a3, 396($t6)
     sw $t3, 384($t6) 
     sw $t3, 400($t6) 
     sw $t3, 516($t6) 
     sw $t3, 524($t6) 
     
     # add "JUMP"
     # add "j"
     li $t5, 0x0f00000
     sw $t5, 24($t6) 
     li $t4, 0x5ff500
     sw $t4, 280($t6) 
     sw $t4, 408($t6) 
     sw $t4, 536($t6) 
     sw $t4, 664($t6) 
     sw $t4, 792($t6) 
     sw $t4, 788($t6) 
     sw $t4, 784($t6) 
     sw $t4, 780($t6) 
     
     #add "u"
     sw $t4, 32($t6) 
     sw $t4, 288($t6) 
     sw $t4, 416($t6) 
     sw $t4, 544($t6) 
     sw $t4, 672($t6) 
     sw $t4, 676($t6) 
     sw $t4, 680($t6) 
     sw $t4, 684($t6) 
     sw $t4, 44($t6) 
     sw $t4, 300($t6) 
     sw $t4, 428($t6) 
     sw $t4, 556($t6) 
     
     #add "m"
     sw $t4, 180($t6) 
     sw $t4, 308($t6) 
     sw $t4, 436($t6) 
     sw $t4, 564($t6) 
     sw $t4, 692($t6) 
     sw $t4, 184($t6) 
     sw $t4, 188($t6) 
     sw $t4, 316($t6) 
     sw $t4, 444($t6) 
     sw $t4, 572($t6) 
     sw $t4, 700($t6) 
     sw $t4, 192($t6) 
     sw $t4, 196($t6) 
     sw $t4, 324($t6) 
     sw $t4, 452($t6) 
     sw $t4, 580($t6) 
     sw $t4, 708($t6) 
        
      #add "p"  
      sw $t4, 76($t6)
      sw $t4, 204($t6)
      sw $t4, 332($t6)
      sw $t4, 460($t6)
      sw $t4, 588($t6)
      sw $t4, 716($t6)
      sw $t4, 80($t6)
      sw $t4, 84($t6)
      sw $t4, 88($t6)
      sw $t4, 216($t6)
      sw $t4, 344($t6)
      sw $t4, 472($t6)
      sw $t4, 468($t6)
      sw $t4, 464($t6)
      sw $t4, 844($t6)
     
     # add heart
      li $t5, 0x0f00000
      sw $t5, 108($t6) 
      sw $t5, 116($t6) 
      sw $t5, 240($t6) 
      sw $t5, 232($t6) 
      sw $s5, 248($t6)
      sw $t5, 360($t6) 
      sw $s5, 376($t6)
      sw $s5, 500($t6) 
      sw $t5, 492($t6) 
      sw $s5, 624($t6)
         #  add "left"
         # add "l"
       li $t5, 0x00ffff
       sw $t5, 1040($t6) 
       sw $t5, 1168($t6) 
       sw $t5, 1296($t6) 
       sw $t5, 1424($t6) 
       sw $t5, 1552($t6)
       sw $t5, 1556($t6) 
       sw $t5, 1560($t6)
          # add "e"
          
         sw $t5, 1056($t6) 
         sw $t5, 1060($t6) 
         sw $t5, 1064($t6)
         sw $t5, 1184($t6) 
         sw $t5, 1312($t6) 
         sw $t5, 1440($t6)
         sw $t5, 1568($t6) 
         sw $t5, 1316($t6) 
         sw $t5, 1320($t6)
         sw $t5, 1572($t6) 
         sw $t5, 1576($t6)
         
         #add "f"
         sw $t5, 1072($t6) 
         sw $t5, 1076($t6) 
         sw $t5, 1080($t6)
         sw $t5, 1200($t6) 
         sw $t5, 1328($t6) 
         sw $t5, 1456($t6)
         sw $t5, 1584($t6) 
         sw $t5, 1332($t6) 
         sw $t5, 1336($t6)
        
        # add "t"
         sw $t5, 1088($t6) 
         sw $t5, 1092($t6) 
         sw $t5, 1096($t6)
         sw $t5, 1220($t6) 
         sw $t5, 1348($t6) 
         sw $t5, 1476($t6)
         sw $t5, 1604($t6)
          # add "--"
         sw $t5, 1356($t6)   
         sw $t5, 1360($t6)  
         sw $t5, 1364($t6)  
         # add "j"
        
         sw $t5, 1380($t6)
         sw $t5, 1124($t6) 
         sw $t5, 1508($t6) 
         sw $t5, 1636($t6) 
         sw $t5, 1632($t6)
         sw $t5, 1628($t6) 
          #add "right"  #ass "r"
          
          sw $t5, 1800($t6)
          sw $t5, 1928($t6)
          sw $t5, 2056($t6)
          sw $t5, 2184($t6)
          sw $t5, 2312($t6)
          sw $t5, 2060($t6)
          sw $t5, 1936($t6)
          sw $t5,1808($t6)
           
          #add "i"
          sw $t5,1816($t6)
          sw $t5,2072($t6)
          sw $t5,2200($t6)
          sw $t5,2328($t6)
          #add "g"
          sw $t5,1824($t6)
          sw $t5,1828($t6)
          sw $t5,1832($t6)
          sw $t5,1952($t6)
          sw $t5,1960($t6)
          sw $t5,2080($t6)
          sw $t5,2084($t6)
          sw $t5,2088($t6)
          sw $t5,2216($t6)
          sw $t5,2344($t6)
          sw $t5,2340($t6)
          sw $t5,2336($t6)
          
          #add "h"
          sw $t5,1840($t6)
          sw $t5,1968($t6)
          sw $t5,2096($t6)
          sw $t5,2100($t6)
          sw $t5,2104($t6)
          sw $t5,2224($t6)
          sw $t5,2352($t6)
          sw $t5,2232($t6)
          sw $t5,2360($t6)
          
            #add "t"
          sw $t5,1856($t6)
          sw $t5,1860($t6)
          sw $t5,1864($t6)
          sw $t5,1988($t6)
          sw $t5,2116($t6)
          sw $t5,2244($t6)
          sw $t5,2372($t6)
         
          
          #add "-"
          sw $t5,2124($t6)
          sw $t5,2128($t6)
          sw $t5,2132($t6)
          
          #add "k"
          sw $t5, 1884($t6)
          sw $t5,2012($t6)
          sw $t5,2140($t6)
          sw $t5, 2268($t6)
          sw $t5,2396($t6)
          sw $t5,2144($t6)
          sw $t5, 2020($t6)
          sw $t5,2276($t6)
          sw $t5, 1896($t6)
          sw $t5,2408($t6)
          li $t5, 0xff00ff
          # add  "Go"  "s"
          sw $t5, 2584($t6)
          sw $t5,2588($t6)
          sw $t5,2592($t6)
          sw $t5, 2596($t6)
          sw $t5,2712($t6)
          sw $t5,2840($t6)
          sw $t5, 2968($t6)
          sw $t5,3096($t6)
          sw $t5, 3100($t6)
          sw $t5,3104($t6)
          sw $t5, 3108($t6)
          sw $t5, 2980($t6)
          sw $t5,2852($t6)
          sw $t5, 2848($t6)
          sw $t5,2856($t6)
          
          # add "o"
          sw $t5, 2608($t6)
          sw $t5,2612($t6)
          sw $t5,2616($t6)
          sw $t5,2736($t6)
          sw $t5,2864($t6)
          sw $t5,2992($t6)
          sw $t5, 3120($t6)
          sw $t5,3124($t6)
          sw $t5, 2744($t6)
          sw $t5,2872($t6)
          sw $t5, 3000($t6)
          sw $t5, 3128($t6)
          
          
          # add "--"
         sw $t5,2880($t6)
         sw $t5, 2884($t6)
         sw $t5, 2888($t6)
           
           # add "s"
          sw $t5, 2640($t6)
          sw $t5,2644($t6)
          sw $t5,2648($t6)
          sw $t5,2768($t6)
          sw $t5,2896($t6)
          sw $t5,2900($t6)
          
          sw $t5, 3152($t6)
          sw $t5,3156($t6)
          
          sw $t5,2904($t6)
          sw $t5, 3032($t6)
          sw $t5, 3160($t6)
        # draw the grren area
        addi $t8, $zero, 96 # set t8 to 96
        addi $t7, $zero,0
        addi $t6, $t0, 3708      
START21: beq $t8, $t7, EXIT21   # check if t7 and t8 equal
        sw $t4, 4($t6)      # paint $t6 + 4 to be t4 colour
        addi $t6, $t6,4       # t6 increase 4
UPDATE21:addi $t7, $t7,1      # t7 increase 1
       J START21           # go to START21
EXIT21:  

# begin game , check the keyboard input to start
BEGIN:
        lw $t8, 0xffff0000   # t8 stores the address
        beq $t8,1,GO1   #chcek if there has any keyboard input
        J BEGIN  # go to BEGIN


    
MAIN:  # paint the background
       addi $t4, $zero, 1024 # set t4 to 1024
       add $t5, $zero, $zero # set t5 to 0
       addi $t6, $t0, -4      # set t6 be the address that 4 less than t0
START: beq $t4, $t5, EXIT    # check if t4 and t5 equal
       sw $t1, 4($t6)      # paint $t6 + 4 to be t1 colour
      addi $t6, $t6,4       # t6 increase 4
UPDATE:addi $t5, $t5,1      # t5 increase 1
       J START           # go to START
EXIT:  jal BACKGROUND
# draw thw step1
STEP1: 
       addi $t4, $zero, 8 #  set t4 to be 8
       add $t5, $zero, $zero # $t5 hold 0
       jal RANDOM # go to RANDOM
       addi $t6,$a0, 3836 # t6 be integer that a0 +3836
       add $t6, $t6,$t0   #t6 be the address that t6+t0
       add $s0, $zero,$zero   # s0 be 0
START1: beq $t4, $t5, EXIT1 # check if t4 equal t5
      sw $t2, 4($t6)  # load the address t6+4 be t2 colour
       sw $a3, 132($t6)
      addi $t6, $t6,4  # t6 increse 4
      add $s0, $t6, $zero    # t0 to be t6
UPDATE1:addi $t5, $t5,1    # t5 increase 1
       J START1  # go to START1
EXIT1:
       addi $s1, $zero,0
       sw $s0, step($s1)
# draw step 2
STEP2: addi $t4, $zero, 8# $t4 hold 8
       add $t5, $zero, $zero # $t5 hold 0
       jal RANDOM  # go to RANDOM
       addi $t6, $a0, 2560  # t6 be integer that a0 +2560
       add $t6, $t6,$t0  #t6 be the address that t6+t0
       add $s0, $zero,$zero  # s1 be 0
START2: beq $t4, $t5, EXIT2# check if t4 equal t5
       sw $t2, 4($t6)   # load the address t6+4 be t2 colour
       sw $a3, 132($t6)
       addi $t6, $t6,4    # t6 increse 4
       add $s0, $t6, $zero      # t0 to be t6
UPDATE2:addi $t5, $t5,1  # t5 increase 1
       J START2        # go to START2
EXIT2:   
       addi $s1, $zero,4
       sw $s0, step($s1)
       lw $ra, 0($sp)
       addi $sp, $sp,4
# draw step 3
STEP3: addi $t4, $zero, 8# $t4 hold 8
       add $t5, $zero, $zero # $t5 hold 0
       jal RANDOM    # go to RANDOM
       addi $t6, $a0, 1280 # t6 be integer that a0 +1280
       add $t6, $t6,$t0  #t6 be the address that t6+t0
       add $s0, $zero,$zero  # s2 be 0
START3: beq $t4, $t5, EXIT3  # check if t4 equal t5
      sw $t2, 4($t6)      # load the address t6+4 be t2 colour
       sw $a3, 132($t6)
      addi $t6, $t6,4  # t6 increse 4
       add $s0, $t6, $zero       # t0 to be t6
UPDATE3:addi $t5, $t5,1        # t5 increase 1
       J START3     # go to START2
EXIT3:          
       addi $s1, $zero,8
       sw $s0, step($s1)
# draw doodle 
DOODLE: 
    
     addi $s1, $zero,0
     lw $s0, step($s1)
     addi $t6, $s0, -652  
     sw $a3, 4($t6)  
     sw $a3, 12($t6)
     sw $t3, 132($t6) 
     sw $a3, 136($t6) 
     sw $t3, 140($t6) 
     sw $a3, 260($t6)
     sw $a3, 264($t6)
     sw $a3, 268($t6)
     sw $a3, 388($t6)
     sw $t3, 392($t6)
     sw $a3, 396($t6)
     sw $t3, 384($t6) 
     sw $t3, 400($t6) 
     sw $t3, 516($t6) 
     sw $t3, 524($t6) 
     # random generate the blocks
     li $v0, 42
     li $a0,0
     li $a1,1024
     syscall
     mul $a0, $a0,4
     add $s2,$a0,$t0
     li $t4, 0x000000
     jal BLOCKS
     # add score board
     addi $s6, $zero, 0
     li $t9, 0x00ffff
     jal SCORE
       
# start jump                 
JUMP:   
       addi $t4, $zero, 18# go up 18 rows
       add $t5, $zero, $zero  #set t5 be 0
START4: beq $t4, $t5, EXIT4 # check if t4 equals t5
        addi $t8, $s2, 0
        # check if touch the block       
        jal TOUCH
        addi $t8, $s2, 4
        jal TOUCH
        addi $t8, $s2, 128
        jal TOUCH
        addi $t8, $s2, 132
        jal TOUCH
        
        # redraw the pink platform
       addi $s1, $zero,4
       lw $s0, step($s1)
       addi $s0, $s0, 96
       sw $a3, 4($s0)   
       sw $a3, 8($s0)   
       sw $a3, 12($s0)
       sw $a3, 16($s0)   
       sw $a3, 20($s0)   
       sw $a3, 24($s0)
       sw $a3, 28($s0)   
       sw $a3, 32($s0) 
       
       addi $s1, $zero,8
       lw $s0, step($s1)
       addi $s0, $s0, 96    
       sw $a3, 4($s0)   
       sw $a3, 8($s0)   
       sw $a3, 12($s0)
       sw $a3, 16($s0)   
       sw $a3, 20($s0)   
       sw $a3, 24($s0)
       sw $a3, 28($s0) 
       sw $a3, 32($s0)     
       
         # sleep for 50ms
        li $v0,32   # sleep         
        addi $t7,$zero, 50# for 50ms
        add $a0,$t7,$zero  #set a0 be a7
        syscall # run the li code
        
        jal UNDOODLE   # go to UNDOODLE
        jal BACKGROUND # go to BACKGROUND
        lw $t8, 0xffff0000   # set t8 to the address
        beq $t8,1,key_press  # check if there are any keyboard input
        subi $t6,$t6,128   # t6 increse 128
        jal DOODLE1   #go to DOODLE
UPDATE4: addi $t5,$t5,1  # t5 increase 1
         J START4   # go to START4
EXIT4:   
   # doodle go down  
DOWN:  lw $t4,644($t6)    # load 644+ t6 to t4
       lw $t5, 652($t6)   # load 652+ t6 to t5
       beq $t2, $t4, EXIT6  # check if t2 equals t4
       beq $t2, $t5, EXIT6   # check if t2 equals t5
       addi $t8, $s2, 0
       # check if touch the block
       jal TOUCH
       addi $t8, $s2, 4
       jal TOUCH
       addi $t8, $s2, 128
       jal TOUCH
       addi $t8, $s2, 132
       jal TOUCH
        # sleep 
        li $v0,32   # sleep 
        addi $t7,$zero,100# for 50ms
        add $a0,$t7,$zero   # a0 to be t7 
        syscall  # run the li code
        jal UNDOODLE   # go to UNDOODLE
       
     #redraw the pink platform 
       addi $s1, $zero,4
       lw $s0, step($s1)
       addi $s0, $s0,96
       sw $a3, 4($s0)   
       sw $a3, 8($s0)   
       sw $a3, 12($s0)
       sw $a3, 16($s0)   
       sw $a3, 20($s0)   
       sw $a3, 24($s0)
       sw $a3, 28($s0)
       sw $a3, 32($s0)      
      
       addi $s1, $zero,8
       lw $s0, step($s1)
       addi $s0, $s0, 96
       sw $a3, 4($s0)   
       sw $a3, 8($s0)   
       sw $a3, 12($s0)
       sw $a3, 16($s0)   
       sw $a3, 20($s0)   
       sw $a3, 24($s0)
       sw $a3, 28($s0)
       sw $a3, 32($s0)        
        
        jal BACKGROUND  # redraw baackground
        lw $t8, 0xffff0000  # set t8 to be the address
        beq $t8,1,key_press  # check if there are any keyboard input
        add $t6,$t6,128  # t6 increase 128
        addi $s7, $t0, 4096   # s7 to be t0+4096
        bgt $t6,$s7, BYE  # check if t6>s7
        jal DOODLE1  #go to DOODLE1
        li $t9, 0x00ffff
        jal SCORE #redraw score board
        
UPDATE6: addi $t5,$t5,1    #t5 increase 1
         J DOWN  # go to DOWN         
EXIT6:  
        # if the doodle back to first platform, continue jump
        addi $s1, $zero,4
        lw $s0, step($s1)
        bgt $t6, $s0, JUMP   # check if t6>s1
        li $v0,32   # sleep 
        addi $t7,$zero,50# for 50ms
        add $a0,$t7,$zero  # a0 be t7
        syscall  # run li code
        # score plus one
        li $t9, 0xfffff0
        jal SCORE # remove score
        addi $s6, $s6,1
        li $t9, 0x00ffff
        jal SCORE  # redraw score
        div $s7, $s6, 10
        mul $s7, $s7, 10
        sub $s7, $s6, $s7
        # check if the score reach the achivement
        bne $s7, 1, CF  
        li $t9, 0x0f0000
        jal COOL  # print cool
CF:     bne $s7, 5, CT
        li $t9, 0xff0000
        jal WOW  # print wow
CT:     bne $s7, 8, ADDSTEP
        li $t9, 0xfff000
        jal NICE  #print nice
ADDSTEP:  # add one more step, change the store position in step
         addi $s1, $zero,0
         lw $s0, step($s1)
         addi $s1, $zero,12
         sw $s0, step($s1)
         addi $s1, $zero,4
         lw $s0, step($s1)
         addi $s1, $zero,0
         sw $s0, step($s1)
         addi $s1, $zero,8
         lw $s0, step($s1)
         addi $s1, $zero,4
         sw $s0, step($s1)
         # random generate the platform
         jal UNBLOCKS
         jal BACKGROUND
         li $v0, 42
         li $a0,0
         li $a1,1024
         syscall
         mul $a0, $a0,4
         add $s2,$a0,$t0
         li $t4, 0x000000
         jal BLOCKS
         
         jal RANDOM   # go to RANDOM
         add $s0, $a0, $t0 # s2 be a0+t0
         addi $s1, $zero,8
         sw $s0, step($s1)
         addi $s5, $t0,3836  # t9 be t0 +3836
         
UPUNTIL:   # platform go down. and doodle go up
          addi $s1, $zero,0
          lw $s0, step($s1)
          bgt $s0, $s5, EXIT10  # check if s0>t9
          jal UNDOODLE   #go to UNDOODLE
          jal UNSTEP #go to UNSTEP
         
         lw $t8, 0xffff0000  # set t8 to be the address
         beq $t8,1,key_press  # check if there are any keyboard input
         subi $t6,$t6,128  # t6 increase 128
         jal DOODLE1  # go to DOODLE1 
         li $t9, 0x00ffff
         jal SCORE
         addi $s1, $zero,0
         lw $s0, step($s1)
         addi $s0, $s0,128  # s0 increase 128
         sw $s0, step($s1)
         addi $s1, $zero,4
         lw $s0, step($s1)
         addi $s0, $s0,128  # s0 increase 128
         sw $s0, step($s1)
         addi $s1, $zero,8
         lw $s0, step($s1)
         addi $s0, $s0,128  # s0 increase 128
         sw $s0, step($s1)
         
         jal BACKGROUND # redraw background
         jal STEP  # redraw STEP
         jal BLOCKS # redraw blocf=k
         # check id reach the achievement
         bne $s7, 1, CF1
         li $t9, 0x0f0000
         jal COOL
CF1:     bne $s7, 5, CT1
         li $t9, 0xff0000
        jal WOW
CT1:     bne $s7, 8, HI
         li $t9, 0xfff000
        jal NICE         
         
HI:      
         li $v0,32   # sleep 
         add $t7,$zero, 50# for 50ms
         add $a0,$t7,$zero  #a0 be t7
         syscall # run the li code
         J  UPUNTIL # go o UPUTILL
                 
EXIT10:  addi $t9, $t1,0
         jal NICE
         jal COOL
         jal WOW 
         J DOWN         # go to DOWN
       
UNSTEP: # remove the step
     addi $t7, $zero, 8# set t4 to be 8
     add $t8, $zero, $zero # $t5 hold 0
START8: beq $t7, $t8, EXIT8  # check if t4 equals t5
        addi $s1, $zero,0
        lw $s0, step($s1)
        addi $s0, $s0,-4 
        sw $s0, step($s1)
        sw $t1, 4($s0)
        sw $t1, 132($s0)
        
        
        addi $s1, $zero,4
        lw $s0, step($s1)
        addi $s0, $s0,-4 # s0 increase -4
        sw $s0, step($s1)
        sw $t1, 4($s0)
        sw $t1, 132($s0)
        
        addi $s1, $zero,8
        lw $s0, step($s1)
        addi $s0, $s0,-4 # s0 increase -4
        sw $s0, step($s1)
        sw $t1, 4($s0)
        sw $t1, 132($s0)
        
        addi $s1, $zero,12
        lw $s0, step($s1)
        addi $s0, $s0,-4 # s0 increase -4
        sw $s0, step($s1)
        sw $t1, 4($s0)
        sw $t1, 132($s0)
        
UPDATE8:addi $t8, $t8,1 # t5 increase by 1
       J START8 # go to START8
EXIT8: 
      jr $ra   # go back
 # print "cool"     
COOL: sw $t9, 192($t0)
      sw $t9, 196($t0)
      sw $t9,320($t0) 
      sw $t9, 452($t0)
      sw $t9, 448($t0)
      
      sw $t9, 204($t0)
      sw $t9, 208($t0)
      sw $t9, 212($t0)
      sw $t9,332($t0) 
      sw $t9,340($t0) 
      sw $t9, 464($t0)
      sw $t9, 460($t0)
      sw $t9,468($t0) 
     
      sw $t9, 220($t0)
      sw $t9, 224($t0)
      sw $t9, 228($t0)
      sw $t9,348($t0) 
      sw $t9,356($t0) 
      sw $t9, 480($t0)
      sw $t9, 476($t0)
      sw $t9,484($t0) 
       
      sw $t9, 236($t0)
      sw $t9, 364($t0)
      sw $t9, 492($t0)
      # add "!"    
      sw $t9, 244($t0)
      sw $t9, 372($t0)
      sw $t9, 628($t0) 
      jr $ra
      
      # print "WOW"
WOW: sw $t9, 192($t0)
     sw $t9,320($t0) 
     sw $t9, 448($t0)
     sw $t9,452($t0)
     sw $t9, 456($t0)
     sw $t9,328($t0)
     sw $t9, 200($t0)
     sw $t9,460($t0)
     sw $t9, 464($t0)
     sw $t9, 336($t0)
     sw $t9,208($t0)
      
      sw $t9, 216($t0)
      sw $t9,220($t0)
      sw $t9, 224($t0)
      sw $t9, 344($t0)
      sw $t9, 352($t0)
      sw $t9,472($t0)
      sw $t9, 480($t0)
      sw $t9, 476($t0)
      
      
      sw $t9, 232($t0)
      sw $t9,360($t0) 
      sw $t9, 488($t0)
      sw $t9,492($t0)
      sw $t9, 496($t0)
      sw $t9,368($t0)
      sw $t9, 240($t0)
      sw $t9,500($t0)
      sw $t9, 504($t0)
      sw $t9, 376($t0)
      sw $t9,248($t0)

      jr $ra
      # print "NICE"
NICE: sw $t9, 192($t0)
      sw $t9, 196($t0)
      sw $t9,200($t0)
      sw $t9,320($t0) 
      sw $t9, 448($t0)
     sw $t9,328($t0)
     sw $t9,456($t0)
     sw $t9,460($t0)
     sw $t9,464($t0)
     sw $t9,336($t0)
     sw $t9,208($t0)
     
      sw $t9, 88($t0)
      sw $t9, 344($t0)
      sw $t9, 472($t0)
       
      sw $t9, 224($t0)
      sw $t9, 228($t0)
      sw $t9,352($t0) 
      sw $t9,480($t0) 
      sw $t9, 484($t0)
     
      sw $t9, 108($t0)
      sw $t9, 112($t0)
      sw $t9, 116($t0)
      sw $t9,236($t0) 
      sw $t9,364($t0) 
      sw $t9, 368($t0)
      sw $t9, 372($t0)
      sw $t9,492($t0) 
       
        sw $t9, 620($t0)
        sw $t9, 624($t0)
        sw $t9, 628($t0)
         
      sw $t9, 124($t0)
      sw $t9,252($t0) 
      sw $t9,380($t0) 
      sw $t9, 636($t0)

      jr $ra   
      
# print "bye bye page"     
BYE:  # print the background
       addi $t4, $zero, 1024 # set t4 to 1024
       add $t5, $zero, $zero # set t5 to 0
       addi $t6, $t0, -4      # set t6 be the address that 4 less than t0
START26: beq $t4, $t5, EXIT26    # check if t4 and t5 equal
       sw $t1, 4($t6)      # paint $t6 + 4 to be t1 colour
       addi $t6, $t6,4       # t6 increase 4
UPDATE26:addi $t5, $t5,1      # t5 increase 1
       J START26           # go to START
EXIT26:
      jal SCORE # print score  
      li $t5, 0x0f00000
      addi $t6, $t0, 0
      sw $t5, 108($t6) 
      sw $t5, 116($t6) 
      sw $t5, 240($t6) 
      sw $t5, 232($t6) 
      sw $t5, 248($t6)
      sw $t5, 360($t6) 
      sw $t5, 376($t6)
      sw $t5, 500($t6) 
      sw $t5, 492($t6) 
      sw $t5, 624($t6)
       # print hearts
      li $t5, 0xff00f0
      addi $t6, $t0, 860
      sw $t5, 108($t6) 
      sw $t5, 116($t6) 
      sw $t5, 240($t6) 
      sw $t5, 232($t6) 
      sw $t5, 248($t6)
      sw $t5, 360($t6) 
      sw $t5, 376($t6)
      sw $t5, 500($t6) 
      sw $t5, 492($t6) 
      sw $t5, 624($t6)
         
      li $t5, 0xfff000
      addi $t6, $t0, 2092
      sw $t5, 108($t6) 
      sw $t5, 116($t6) 
      sw $t5, 240($t6) 
      sw $t5, 232($t6) 
      sw $t5, 248($t6)
      sw $t5, 360($t6) 
      sw $t5, 376($t6)
      sw $t5, 500($t6) 
      sw $t5, 492($t6) 
      sw $t5, 624($t6)
         
     li $t5, 0xff0000
     addi $t6, $t0, 2912
     sw $t5, 108($t6) 
     sw $t5, 116($t6) 
     sw $t5, 240($t6) 
     sw $t5, 232($t6) 
     sw $t5, 248($t6)
     sw $t5, 360($t6) 
     sw $t5, 376($t6)
     sw $t5, 500($t6) 
     sw $t5, 492($t6) 
     sw $t5, 624($t6)
    # print "bye"
     add $t5, $t0, 1164
     sw $t3, 0($t5)   
     sw $t3, 128($t5) 
     sw $t3, 256($t5) 
     sw $t3, 260($t5) 
     sw $t3, 264($t5) 
     sw $t3, 384($t5) 
     sw $t3, 392($t5) 
     sw $t3, 512($t5) 
     sw $t3, 516($t5) 
     sw $t3, 520($t5) 
     
     sw $t3, 144($t5) 
     sw $t3, 152($t5) 
     sw $t3, 272($t5) 
     sw $t3, 280($t5) 
     sw $t3, 400($t5) 
     sw $t3, 404($t5) 
     sw $t3, 408($t5) 
     sw $t3, 536($t5) 
     sw $t3, 664($t5) 
     sw $t3, 660($t5) 
     sw $t3, 656($t5) 
     
     sw $t3, 32($t5)   
     sw $t3, 36($t5) 
     sw $t3, 40($t5) 
     sw $t3, 160($t5) 
     sw $t3, 288($t5) 
     sw $t3, 292($t5) 
     sw $t3, 296($t5) 
     sw $t3, 416($t5) 
     sw $t3, 544($t5) 
     sw $t3, 548($t5) 
     sw $t3, 552($t5) 
     # print "bye"
     add $t5, $t0, 1728
     sw $t3, 0($t5)   
     sw $t3, 128($t5) 
     sw $t3, 256($t5) 
     sw $t3, 260($t5) 
     sw $t3, 264($t5) 
     sw $t3, 384($t5) 
     sw $t3, 392($t5) 
     sw $t3, 512($t5) 
     sw $t3, 516($t5) 
     sw $t3, 520($t5) 
     
     
     sw $t3, 144($t5) 
     sw $t3, 152($t5) 
     sw $t3, 272($t5) 
     sw $t3, 280($t5) 
     sw $t3, 400($t5) 
     sw $t3, 404($t5) 
     sw $t3, 408($t5) 
     sw $t3, 536($t5) 
     sw $t3, 664($t5) 
     sw $t3, 660($t5) 
     sw $t3, 656($t5) 
     
     sw $t3, 32($t5)   
     sw $t3, 36($t5) 
     sw $t3, 40($t5) 
     sw $t3, 160($t5) 
     sw $t3, 288($t5) 
     sw $t3, 292($t5) 
     sw $t3, 296($t5) 
     sw $t3, 416($t5) 
     sw $t3, 544($t5) 
     sw $t3, 548($t5) 
     sw $t3, 552($t5) 
     
     
     sw $t3, 176($t5) 
     sw $t3, 304($t5)    
     sw $t3, 432($t5) 
     sw $t3, 688($t5)
     addi $t6, $t0, 2972
     # print doodle
     jal DOODLE1
     # print cry
      li $t9, 0x00ffff
      sw $t9,128($t6)
      sw $t9,124($t6)
      sw $t9,248($t6)
      sw $t9,372($t6)
      sw $t9,496($t6)
      
      sw $t9,144($t6)
      sw $t9,148($t6)
      sw $t9,280($t6)
      sw $t9,412($t6)
      sw $t9,544($t6)
    
     J BEGIN  # go to BEGIN
# draw step
STEP: addi $t7, $zero, 8 # set t4 be 8
     add $t8, $zero, $zero # $t5 hold 0
START9: beq $t7, $t8, EXIT9 # check if t4 and t5 equal
        addi $s1, $zero,0
        lw $s0, step($s1)
        sw $t2, 4($s0) # set the address s0+4 to be t2 colour
        sw $a3, 132($s0)
        addi $s0, $s0,4
        sw $s0, step($s1)
         
         
        addi $s1, $zero,4
        lw $s0, step($s1)
        sw $t2, 4($s0) # set the address s0+4 to be t2 colour
        sw $a3, 132($s0)
        addi $s0, $s0,4
        sw $s0, step($s1)
        
        addi $s1, $zero,8
        lw $s0, step($s1)
        sw $t2, 4($s0) # set the address s0+4 to be t2 colour
        sw $a3, 132($s0)
        addi $s0, $s0,4
        sw $s0, step($s1)
        
UPDATE9:
       addi $t8, $t8,1  # t5 increase 1
       J START9 # go to START9
EXIT9: jr $ra # go back
# draw blocks
BLOCKS: 
        lw $t7, 0($s2)
        beq $t3, $t7, BACK
        beq $a3, $t7, BACK
        sw $t4, 0($s2)
        lw $t7, 4($s2)
        beq $t3, $t7, BACK
        beq $a3, $t7, BACK
        sw $t4, 4($s2)
        lw $t7, 128($s2)
        beq $t3, $t7, BACK
        beq $a3, $t7, BACK
        sw $t4, 128($s2)
        lw $t7, 132($s2)
        beq $t3, $t7, BACK
        beq $a3, $t7, BACK
        sw $t4, 132($s2)    
 BACK:  jr $ra    
        
# remove blocks        
UNBLOCKS: 
        sw $t1, 0($s2)
        sw $t1, 4($s2)
        sw $t1, 128($s2)
        sw $t1, 132($s2)    
        jr $ra    
# check keyboard input        
key_press:
          lw $a1,0xffff0004  # set a1 to be the address
          addi $sp,$sp,-4  # sp decrease 4
          sw $ra, 0($sp) # store ra to the sp
          beq $a1, 0x45, re #check if a1 equals E
          beq $a1,0x6a, rj  # check if a1 equals j
          beq $a1,0x6b, rk  # check if a1 equals k
          beq $a1, 0x73, rs  #check if a1 equals s
          lw $ra, 0($sp) # load ra to be the 0 position of sp
          addi $sp,$sp,4   # sp increase 4
          jr $ra  # go back

rj: addi $t6,$t6,-4  # t6 dcreasee 4
    jr $ra # go back
    
GO1:  lw $a1,0xffff0004  # set a1 to be the address
      beq $a1, 0x73, rs
      beq $a1, 0x45, re
      J BEGIN  # go back
#  draw background: hearts
BACKGROUND:
     
        li $t7, 0x8000ff
        sw $t7, 968($t0) 
        sw $t7, 976($t0) 
        sw $t7, 1100($t0) 
        sw $t7, 1092($t0) 
        sw $t7, 1108($t0)
        sw $t7, 1220($t0) 
        sw $t7, 1236($t0)
        sw $t7, 1360($t0) 
        sw $t7, 1352($t0) 
        sw $t7,1484($t0)
         
        li $t7, 0xfff00f
        sw $t7, 2200($t0) 
        sw $t7, 2208($t0) 
        sw $t7, 2332($t0) 
        sw $t7, 2324($t0) 
        sw $t7, 2340($t0)
        sw $t7, 2452($t0) 
        sw $t7, 2468($t0)
        sw $t7, 2592($t0) 
        sw $t7, 2584($t0) 
        sw $t7, 2716($t0)
         
        li $t7, 0xff00f0
        sw $t7, 3020($t0) 
        sw $t7, 3028($t0) 
        sw $t7, 3152($t0) 
        sw $t7, 3144($t0) 
        sw $t7, 3160($t0)
        sw $t7, 3272($t0) 
        sw $t7, 3288($t0)
        sw $t7, 3412($t0)  
        sw $t7, 3404($t0) 
        sw $t7, 3536($t0)
       jr $ra    
 # check if touch the blocks or not   
TOUCH: addi $t7, $t6, 4
       beq $t7, $t8, BYE
       addi $t7, $t6, 12
       beq $t7, $t8, BYE
       addi $t7, $t6, 132
       beq $t7, $t8, BYE
       addi $t7, $t6, 136
       beq $t7, $t8, BYE
       addi $t7, $t6, 140
       beq $t7, $t8, BYE
       addi $t7, $t6, 260
       beq $t7, $t8, BYE
       addi $t7, $t6, 264
       beq $t7, $t8, BYE
       addi $t7, $t6, 268
       beq $t7, $t8, BYE
       addi $t7, $t6, 388
       beq $t7, $t8, BYE
       addi $t7, $t6, 392
       beq $t7, $t8, BYE
       addi $t7, $t6, 396
       beq $t7, $t8, BYE
       addi $t7, $t6, 384
       beq $t7, $t8, BYE
       addi $t7, $t6, 400
       beq $t7, $t8, BYE
       addi $t7, $t6, 516
       beq $t7, $t8, BYE
       addi $t7, $t6, 524
       beq $t7, $t8, BYE
       jr $ra
      
rk:# if k, go right
   addi $t6, $t6,4 # t6 increase 4
   jr $ra  # go back

re:J END  # if E, end
    
rs: J MAIN # if s, restart 
  
UNDOODLE:# remove doodle, if it were platform, redraw green
     addi $s1, $zero,4
     lw $s0, step($s1)
     addi $s3, $s0,-32  # s3 = s1-32
     addi $s1, $zero,8
     lw $s0, step($s1)
     addi $s7, $s0,-32
     addi $s4, $t6,4   # s4 = t6+4
     bge  $s3, $s4, CHECKTOP  # check if s3>=s4
 CHECK:    
     addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE 
     sw $t2, 4($t6) # set t6+4 be t2 colour
     
 GREEN1: addi $s4, $t6,12    #s4=t6+12
     bge  $s3, $s4,CHECKTOP2  # check if s3>=s4
     
 CHECK2:  
     addi $s1, $zero,4
     lw $s0, step($s1) 
     bgt $s4, $s0, WHITE2   #check if s4>s0
     sw $t2, 12($t6)# set t6+12 be t2 colour
     
  GREEN2:addi $s4, $t6,132    #s4=t6+132
     bge  $s3, $s4, CHECKTOP3 
     
  CHECK3:   
     addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE3#check if s4>s0
     sw $t2, 132($t6)  # set t6+132 be t2 colour
  GREEN3:     addi $s4, $t6,136  #s4=t6+136
     bge  $s3, $s4, CHECKTOP4 # check if s3>=s4
   CHECK4:  
     addi $s1, $zero,4
     lw $s0, step($s1)
     
     bgt $s4, $s0, WHITE4#check if s4>s0
     sw $t2, 136($t6)  # set t6+136 be t2 colour
  GREEN4:    addi $s4, $t6,140   #s4=t6+140
     bge  $s3, $s4, CHECKTOP5  # check if s3>=s4
   CHECK5:  
     addi $s1, $zero,4
     lw $s0, step($s1)
    bgt $s4, $s0, WHITE5#check if s4>s0
     sw $t2, 140($t6)# set t6+256 be t2 colour
  GREEN5:    addi $s4, $t6,260    #s4=t6+260
     bge  $s3, $s4, CHECKTOP6  # check if s3>=s4
   CHECK6:  
     addi $s1, $zero,4
     lw $s0, step($s1)
    bgt $s4, $s0, WHITE6#check if s4>s0
     sw $t2, 260($t6)# set t6+264 be t2 colour
   GREEN6:
   addi $s4, $t6,264   # s4 = t6+264
     bge  $s3, $s4, CHECKTOP7  # check if s3>=s4
   CHECK7:  
     addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE7  # check if s4>s0
     sw $t2, 264($t6) # set t6+4 be t2 colour
 GREEN7:  
     addi $s4, $t6,268   # s4 = t6+268
     bge  $s3, $s4, CHECKTOP8 # check if s3>=s4
   CHECK8: 
    addi $s1, $zero,4
     lw $s0, step($s1)
   bgt $s4, $s0, WHITE8  # check if s4>s0
     sw $t2, 268($t6) # set t6+4 be t2 colour
 GREEN8:  
     addi $s4, $t6,388   # s4 = t6+388
     bge  $s3, $s4, CHECKTOP9  # check if s3>=s4
 CHECK9:
   addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0,  WHITE9# check if s4>s0
     sw $t2, 388($t6) # set t6+4 be t2 colour
 GREEN9:  
 
  addi $s4, $t6,392  # s4 = t6+392
     bge  $s3, $s4, CHECKTOP10# check if s3>=s4
 CHECK10:addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE10 # check if s4>0
     sw $t2, 392($t6) # set t6+392 be t2 colour
 GREEN10:
  addi $s4, $t6,396  # s4 = t6+396
     bge  $s3, $s4,CHECKTOP11  # check if s3>=s4
  CHECK11:
     addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE11 # check if s4>s0
     sw $t2, 396($t6) # set t6+396 be t2 colour
 GREEN11:
   addi $s4, $t6,384  # s4 = t6+4
     bge  $s3, $s4, CHECKTOP12  # check if s3>=s4
 CHECK12:   
     
     addi $s1, $zero,4
     lw $s0, step($s1)
      bgt $s4, $s0, WHITE12  # check if s4>s0
     sw $t2, 384($t6) # set t6+384 be t2 colour
 GREEN12:
  
   addi $s4, $t6,400  # s4 = t6+4
     bge  $s3, $s4, CHECKTOP13  # check if s3>=s4
  CHECK13:  addi $s1, $zero,4
     lw $s0, step($s1)
   bgt $s4, $s0, WHITE13  # check if s4>s0
            sw $t2, 400($t6) # set t6+400 be t2 colour
 GREEN13:

   addi $s4, $t6,516  # s4 = t6+4
     bge  $s3, $s4, CHECKTOP14  # check if s3>=s4
 CHECK14:addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE14  # check if s4>s0
     sw $t2, 516($t6) # set t6+516 be t2 colour
 GREEN14:
 
   addi $s4, $t6,524  # s4 = t6+524
     bge  $s3, $s4, CHECKTOP15 # check if s3>=s4
  CHECK15: addi $s1, $zero,4
     lw $s0, step($s1)
     bgt $s4, $s0, WHITE15  # check if s4>s0
     sw $t2, 524($t6) # set t6+524 be t2 colour
GREEN15:jr $ra 
 
WHITE: sw $t1, 4($t6)  # set t6+4 be t1 colour
     J GREEN1 # go to GREEN1
WHITE2: sw $t1, 12($t6) # set t6+12 be t1 colour
     J GREEN2 #go to GREEN2
WHITE3: sw $t1, 132($t6)# set t6+132 be t1 colour
     J GREEN3  # go to GREEN3
WHITE4: sw $t1, 136($t6) # set t6+136 be t1 colour
     J GREEN4 # go to GREEN4
WHITE5:sw $t1, 140($t6)# set t6+140 be t1 colour
     J GREEN5    # go to GREEN5
WHITE6:sw $t1, 260($t6)# set t6+260 be t1 colour
     J GREEN6    # go to GREEN6 
WHITE7: sw $t1, 264($t6)# set t6+264 be t1 colour
     J GREEN7  # go to GREEN3
WHITE8: sw $t1, 268($t6) # set t6+268 be t1 colour
     J GREEN8 # go to GREEN4
WHITE9:sw $t1, 388($t6)# set t6+388 be t1 colour
     J GREEN9    # go to GREEN5
WHITE10:sw $t1, 392($t6)# set t6+392 be t1 colour
     J GREEN10    # go to GREEN6
WHITE11:sw $t1, 396($t6)# set t6+396 be t1 colour
     J GREEN11    # go to GREEN6 
WHITE12: sw $t1, 384($t6)# set t6+384 be t1 colour
     J GREEN12 # go to GREEN3
WHITE13: sw $t1, 400($t6) # set t6+400 be t1 colour
     J GREEN13# go to GREEN4
WHITE14:sw $t1, 516($t6)# set t6+516 be t1 colour
     J GREEN14    # go to GREEN5
WHITE15:sw $t1, 524($t6)# set t6+524 be t1 colour
     J GREEN15    # go to GREEN6
CHECKTOP:  
      addi $s1, $zero,8
     lw $s0, step($s1)
      bge  $s7, $s4, WHITE  # check if s3>=s4
     bgt $s4, $s0, WHITE 
     J CHECK
CHECKTOP2:  addi $s1, $zero,8
     lw $s0, step($s1) 
     bge  $s7, $s4, WHITE2  # check if s3>=s4
     bgt $s4, $s0, WHITE2 
     J CHECK2  
     
CHECKTOP3:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE3  # check if s3>=s4
     bgt $s4, $s0, WHITE3
     J CHECK3   
CHECKTOP4:    
     addi $s1, $zero,8
     lw $s0, step($s1)
      bge  $s7, $s4, WHITE4  # check if s3>=s4
     bgt $s4, $s0, WHITE4
     J CHECK4     
CHECKTOP5:  
      addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE5  # check if s3>=s4
     bgt $s4, $s0, WHITE5
     J CHECK5
CHECKTOP6: 
     addi $s1, $zero,8
     lw $s0, step($s1)
      bge  $s7, $s4, WHITE6  # check if s3>=s4
     bgt $s4, $s0, WHITE6
     J CHECK6     
CHECKTOP7:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE7  # check if s3>=s4
     bgt $s4, $s0, WHITE7
     J CHECK7   
CHECKTOP8:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE8  # check if s3>=s4
     bgt $s4, $s0, WHITE8
     J CHECK8     
     
CHECKTOP9:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE9  # check if s3>=s4
     bgt $s4, $s0, WHITE9
     J CHECK9
CHECKTOP10:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE10  # check if s3>=s4
     bgt $s4, $s0, WHITE10
     J CHECK10
     
CHECKTOP11:  
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE11  # check if s3>=s4
     bgt $s4, $s0, WHITE11
     J CHECK11          
CHECKTOP12: 
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE12  # check if s3>=s4
     bgt $s4, $s0, WHITE12
     J CHECK12          
CHECKTOP13:
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE13  # check if s3>=s4
     bgt $s4, $s0, WHITE13
     J CHECK13      
CHECKTOP14:
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE14  # check if s3>=s4
     bgt $s4, $s0, WHITE14
     J CHECK14
CHECKTOP15:
     addi $s1, $zero,8
     lw $s0, step($s1)
     bge  $s7, $s4, WHITE15 # check if s3>=s4
     bgt $s4, $s0, WHITE15
     J CHECK15                          
DOODLE1: # set all the color in the DOODLE position to be t3
     
     sw $a3, 4($t6) 
     #sw $a3, 8($t6) 
     sw $a3, 12($t6)
     sw $t3, 132($t6) 
     sw $a3, 136($t6) 
     sw $t3, 140($t6) 
     sw $a3, 260($t6)
     sw $a3, 264($t6)
     sw $a3, 268($t6)
     sw $a3, 388($t6)
     sw $t3, 392($t6)
     sw $a3, 396($t6)
     
     sw $t3, 384($t6) 
     sw $t3, 400($t6) # set 128+t6 be t3 clolour
     sw $t3, 516($t6) # set 132+t6 be t3 clolour
     sw $t3, 524($t6)
     jr $ra
     

SCORE: # draw score 
      div $s7,$s6, 10
      addi $t8, $t0, 124
      bne $s7,0, ONE
     sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 268($t8) 
     sw $t9, 388($t8)
     sw $t9, 396($t8) 
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
  ONE:    bne $s7,1,TWO
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
  TWO :   bne $s7,2,THREE
   sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 388($t8)
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
  THREE:    bne $s7,3,FOUR
   sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   FOUR:   bne $s7,4,FIVE
   sw $t9, 4($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
    FIVE:  bne $s7,5,SIX
    sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   SIX:    bne $s7,6,SEVEN
      sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
      sw $t9,388($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   SEVEN:   bne $s7,7,EIGHT
    sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
      sw $t9, 140($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
   EIGHT:   bne $s7,8,NINE
   sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
      sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
      sw $t9,388($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   NINE:  bne $s7,9,NEXT
     sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
      sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   NEXT:   mul $s7,$s7,10
      sub $s7, $s6, $s7
      addi $t8, $t0, 140
      bne $s7,0, ONE1
       sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 268($t8) 
     sw $t9, 388($t8)
     sw $t9, 396($t8) 
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
    ONE1:  bne $s7,1,TWO1
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
    TWO1:  bne $s7,2,THREE1
     sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 388($t8)
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
    THREE1:  bne $s7,3,FOUR1
     sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
    FOUR1:  bne $s7,4,FIVE1
    sw $t9, 4($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
   FIVE1:   bne $s7,5,SIX1
   sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   SIX1:    bne $s7,6,SEVEN1
      sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
      sw $t9,388($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
   SEVEN1:   bne $s7,7,EIGHT1
    sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
      sw $t9, 140($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
     sw $t9, 524($t8)
  EIGHT1:    bne $s7,8,NINE1
  sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
      sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
      sw $t9,388($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
  NINE1:    bne $s7,9,GOBACK
    sw $t9, 4($t8)
     sw $t9, 8($t8)
     sw $t9, 12($t8)
     sw $t9, 132($t8)
      sw $t9, 140($t8)
     sw $t9, 260($t8)
     sw $t9, 264($t8)
     sw $t9, 268($t8) 
     sw $t9, 396($t8) 
      sw $t9, 516($t8)
     sw $t9, 520($t8)
     sw $t9, 524($t8)
  GOBACK:   
      jr $ra  # go back


# draw alphabet

A:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

B:
sw $t9, 0($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

C:
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

D:
sw $t9, 8($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

E:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

F:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

G:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

H:
sw $t9, 0($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16  
addi, $t7, $t7,1
J NAME

I:
sw $t9, 0($t6)
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 8
addi, $t7, $t7,1
J NAME

J:
sw $t9, 8($t6)
sw $t9, 136($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

K:
sw $t9, 0($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

L:
sw $t9, 0($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME


M:
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 520($t6)
sw $t9, 268($t6)
sw $t9, 272($t6)
sw $t9, 400($t6)
sw $t9, 528($t6)
addi, $t6, $t6, 24
addi, $t7, $t7,1 
J NAME

N:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

O:

sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
 addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

P:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

Q:sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

R:
sw $t9, 0($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

S:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 256($t6)
sw $t9, 260($t6)
sw $t9, 264($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME


T:

sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 132($t6)
sw $t9, 260($t6)
sw $t9, 388($t6)
sw $t9, 516($t6)
addi, $t6, $t6, 16
addi, $t7, $t7,1
J NAME

U:
sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME


V:

sw $t9, 384($t6)
sw $t9, 392($t6)
sw $t9, 516($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

W:
sw $t9, 256($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
sw $t9, 392($t6)
sw $t9, 264($t6)
sw $t9, 524($t6)
sw $t9, 528($t6)
sw $t9, 400($t6)
sw $t9, 272($t6)
addi $t6, $t6,24
addi, $t7, $t7,1
J NAME

X:

sw $t9, 256($t6)
sw $t9, 264($t6)
sw $t9, 388($t6)
sw $t9, 512($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

Y:
sw $t9, 0($t6)
sw $t9, 8($t6)
sw $t9, 128($t6)
sw $t9, 136($t6)
sw $t9, 260($t6)
sw $t9, 388($t6)
sw $t9, 516($t6)
addi, $t6, $t6, 16

addi, $t7, $t7,1
J NAME

Z:
sw $t9, 0($t6)
sw $t9, 4($t6)
sw $t9, 8($t6)
sw $t9, 136($t6)
sw $t9, 260($t6)
sw $t9, 384($t6)
sw $t9, 512($t6)
sw $t9, 516($t6)
sw $t9, 520($t6)
addi, $t6, $t6, 16 
addi, $t7, $t7,1
J NAME

     
INPUT:     # check name the user input 
          lw $a1,0xffff0004  # set a1 to be the address
          
          beq $a1, 0x61, A
          beq $a1, 0x62, B
          beq $a1,0x63,C  # check if a1 equals j
         beq $a1,0x64,D  # check if a1 equals k
         beq $a1, 0x65,E  #check if a1 equals s
         
         beq $a1, 0x66, F
          beq $a1, 0x67,G 
          beq $a1,0x68,H  # check if a1 equals j
         beq $a1,0x69,I  # check if a1 equals k
         beq $a1, 0x6a,J  #check if a1 equals s
         
         beq $a1, 0x6b,K
          beq $a1, 0x6c, L
          beq $a1,0x6d,M  # check if a1 equals j
         beq $a1,0x6e,N  # check if a1 equals k
         beq $a1, 0x6f,O  #check if a1 equals s
         
         beq $a1, 0x70, P
         beq $a1, 0x71, Q
          beq $a1, 0x72, R
          beq $a1,0x73,S  # check if a1 equals j
         beq $a1,0x74,T  # check if a1 equals k
         beq $a1, 0x75,U  #check if a1 equals s
       
         beq $a1, 0x76, V
          beq $a1, 0x77,W 
          beq $a1,0x78,X  # check if a1 equals j
         beq $a1,0x79,Y  # check if a1 equals k
         beq $a1, 0x7a,Z  #check if a1 equals s
         beq $a1, 0x41, GAME #check if a1 equals s
         beq $a1,0x45, END
         J NAME
   

     

RANDOM: # random generate an integer no more than 24
    li $v0, 42
    li $a0,0
    li $a1,24
    syscall
    mul $a0, $a0,4
    jr $ra
END:
li $v0, 10 # terminate the program gracefully
syscall

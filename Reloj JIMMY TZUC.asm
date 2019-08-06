

puntos Macro accion ;:
mov AH,02H
mov DL,39
mov DH,accion
int 10H 
ENDM                                 
          

print Macro msj   ;impresion reoj
	MOV AH, 09H					
    MOV DX, OFFSET msj        
    INT 21H	
ENDM   


posicion Macro accion ;1er N
mov AH,02H
mov DL,25
mov DH,accion
int 10H 
ENDM  
         
 

posicion1 Macro accion ;N 1
mov AH,02H
mov DL,33
mov DH,accion
int 10H 
ENDM  



posicion2 Macro accion ;3er N
mov AH,02H
mov DL,43
mov DH,accion
int 10H 
ENDM                   


posicion3 Macro accion ;4to N
mov AH,02H
mov DL,52
mov DH,accion
int 10H 
ENDM       

;Empieza la principal
Stack segment para stack 'STACK'
	DB 32 dup ('STACK')
Stack ends  




Data segment para 'data'


HORADEC DB ?

HORAUNI DB ?

MINUDEC DB ?

MINUUNI DB ?
 

zero1 db   "###$"  
zero2 db   "# #$"  
zero3 db   "# #$"  
zero4 db   "# #$"  
zero5 db   "###$"
    

one1 db    " ##  $"  
one2 db    "###  $"  
one3 db    "  #  $"  
one4 db    "  #  $"  
one5 db    "  #  $"  

two1 db    "###$"  
two2 db    "  #$"  
two3 db    "###$"  
two4 db    "#  $"    
two5 db    "###$"

tree1 db   "###$"  
tree2 db   "  #$"  
tree3 db   "###$"  
tree4 db   "  #$"
tree5 db   "###$"  

four1 db "# #$"  
four2 db "# #$"  
four3 db "###$"  
four4 db "  #$"
four5 db "  #$"  
              
five1 db  "###$"  
five2 db  "#  $"  
five3 db  "###$"  
five4 db  "  #$"
five5 db  "###$" 

six1 db   "###$"  
six2 db   "#  $"  
six3 db   "###$"  
six4 db   "# #$"
six5 db   "###$"    

seven1 db  "###$"  
seven2 db  "  #$"  
seven3 db  "  #$"  
seven4 db  "  #$"
seven5 db  "  #$" 
 

eigth1 db   "###$"  
eigth2 db   "# #$"  
eigth3 db   "###$"  
eigth4 db   "# #$"
eigth5 db   "###$"  

nine1 db    "###$"  
nine2 db    "# #$"  
nine3 db    "###$"  
nine4 db    "  #$"
nine5 db    "  #$"

punto1 db    " # $"  
punto2 db    " # $"  
punto3 db    "   $"  
punto4 db    " # $"
punto5 db    " # $"


Data ends

Code segment para 'code'
princ proc far
	ASSUME SS:Stack, DS:Data, CS:Code

	mov AX, data
	mov DS, AX

mov AL, 2 
mov AH, 0 
int 10H


;aQUI SE CAPTURA LA HORA
CAPTURA:

mov AH, 2CH
int 21H 

mov AL, CH ;SE OBTIENEN LAS HORAS (0-23)
AAM ;SE DESEMPAQUETA EN BCD
mov HORADEC, AH
mov HORAUNI, AL 

mov AL, CL ;SE OBTIENEN LOS segNumS
AAM ;SE DESEMPAQUETA EN BCD
mov MINUDEC, AH
mov MINUUNI, AL





;2 puntos

puntos 8
		
print punto1         

puntos 9
				
print punto2         

puntos 10
				
print punto3                 

puntos 11
				
print punto4         

puntos 12
				
print punto5

puntos 13





         

 ;IMPRIME LOS SIMBOLOS EN FORMA DE #

cmp HORADEC,00H
je NUM0
cmp HORADEC,01H
je NUM1
cmp HORADEC,02H
je NUM2


NUM0:

posicion 8
print zero1
posicion 9
print zero2         
posicion 10				
print zero3          
posicion 11				
print zero4         
posicion 12
print zero5
posicion 13
 jmp segNum


NUM1:

posicion 8
print one1
posicion 9
print one2         
posicion 10				
print one3          
posicion 11				
print one4         
posicion 12
print one5
posicion 13
 jmp segNum

NUM2:
posicion 8
print two1
posicion 9
print two2         
posicion 10				
print two3          
posicion 11				
print two4         
posicion 12
print two5
posicion 13
 jmp segNum          




segNum:

cmp HORAUNI,00H
je NUM00
cmp HORAUNI,01H
je NUM01
cmp HORAUNI,02H
je NUM02
cmp HORAUNI,03H
je NUM03
cmp HORAUNI,04H
je NUM04
cmp HORAUNI,05H
je NUM05
cmp HORAUNI,06H
je NUM06
cmp HORAUNI,07H
je NUM07
cmp HORAUNI,08H
je NUM08
cmp HORAUNI,09H
je NUM09





NUM00:

posicion1 8
print zero1
posicion1 9
print zero2         
posicion1 10				
print zero3          
posicion1 11				
print zero4         
posicion1 12
print zero5
posicion1 13
jmp terNum


NUM01:
posicion1 8
print one1
posicion1 9
print one2         
posicion1 10				
print one3          
posicion1 11				
print one4         
posicion1 12
print one5
posicion1 13
jmp terNum

NUM02:
posicion1 8
print two1
posicion1 9
print two2         
posicion1 10				
print two3          
posicion1 11				
print two4         
posicion1 12
print two5
posicion1 13
 jmp terNum          

NUM03:
posicion1 8
print tree1
posicion1 9
print tree2         
posicion1 10				
print tree3          
posicion1 11				
print tree4         
posicion1 12
print tree5
posicion1 13
jmp terNum    


 NUM04:
posicion1 8
print four1
posicion1 9
print four2         
posicion1 10				
print four3          
posicion1 11				
print four4         
posicion1 12
print four5
posicion1 13
jmp terNum 

 NUM05:
posicion1 8
print five1
posicion1 9
print five2         
posicion1 10				
print five3          
posicion1 11				
print five4         
posicion1 12
print five5   
posicion1 13
jmp terNum 

 NUM06:
posicion1 8
print six1
posicion1 9
print six2         
posicion1 10				
print six3          
posicion1 11				
print six4         
posicion1 12
print six5 
posicion1 13
jmp terNum 

 NUM07:
posicion1 8
print seven1
posicion1 9
print seven2         
posicion1 10				
print seven3      
posicion1 11				
print seven4         
posicion1 12
print seven5 
posicion1 13
jmp terNum 

 NUM08:
posicion1 8
print eigth1
posicion1 9
print eigth2         
posicion1 10				
print eigth3          
posicion1 11				
print eigth4         
posicion1 12
print eigth5
posicion1 13
jmp terNum 

 NUM09:
posicion1 8
print nine1
posicion1 9
print nine2         
posicion1 10				
print nine3          
posicion1 11				
print nine4         
posicion1 12
print nine5
posicion1 13

jmp terNum 
          


terNum:     
               
cmp MINUDEC,00H
je NUM000
cmp MINUDEC,01H
je NUM111
cmp MINUDEC,02H
je NUM222
cmp MINUDEC,03H
je NUM333
cmp MINUDEC,04H
je NUM444
cmp MINUDEC,05H
je NUM555





NUM000:
posicion2 8
print zero1
posicion2 9
print zero2         
posicion2 10				
print zero3          
posicion2 11				
print zero4         
posicion2 12
print zero5
posicion2 13
jmp cuartNum

 NUM111:
posicion2 8
print one1
posicion2 9
print one2         
posicion2 10				
print one3          
posicion2 11				
print one4         
posicion2 12
print one5
posicion2 13
jmp cuartNum


 NUM222:
posicion2 8
print two1
posicion2 9
print two2         
posicion2 10				
print two3          
posicion2 11				
print two4         
posicion2 12
print two5
posicion2 13
jmp cuartNum
           
 NUM333:
posicion2 8
print tree1
posicion2 9
print tree2         
posicion2 10				
print tree3          
posicion2 11				
print tree4         
posicion2 12
print tree5 
posicion2 13
jmp cuartNum
    

 NUM444:
posicion2 8
print four1
posicion2 9
print four2         
posicion2 10				
print four3          
posicion2 11				
print four4         
posicion2 12
print four5
posicion2 13
jmp cuartNum

  

 NUM555:
posicion2 8
print five1
posicion2 9
print five2         
posicion2 10				
print five3          
posicion2 11				
print five4         
posicion2 12
print five5 
posicion2 13
jmp cuartNum




cuartNum:                  
                  
cmp MINUUNI,00H
je NUM0000
cmp MINUUNI,01H
je NUM1111
cmp MINUUNI,02H
je NUM2222
cmp MINUUNI,03H
je NUM3333
cmp MINUUNI,04H
je NUM4444
cmp MINUUNI,05H
je NUM5555
cmp MINUUNI,06H
je NUM6666
cmp MINUUNI,07H
je NUM7777
cmp MINUUNI,08H
je NUM8888
cmp MINUUNI,09H
je NUM9999                  
                  
                  
NUM0000:
posicion3 8
print zero1
posicion3 9
print zero2         
posicion3 10				
print zero3          
posicion3 11				
print zero4         
posicion3 12
print zero5
posicion3 13
 jmp teclaF

NUM1111:
posicion3 8
print one1
posicion3 9
print one2         
posicion3 10				
print one3          
posicion3 11				
print one4         
posicion3 12
print one5
posicion3 13
jmp teclaF

NUM2222:
posicion3 8
print two1
posicion3 9
print two2         
posicion3 10				
print two3          
posicion3 11				
print two4         
posicion3 12
print two5
posicion3 13
 jmp teclaF           

 NUM3333:
posicion3 8
print tree1
posicion3 9
print tree2         
posicion3 10				
print tree3          
posicion3 11				
print tree4         
posicion3 12
print tree5
posicion3 13
 jmp teclaF    


  NUM4444:
posicion3 8
print four1
posicion3 9
print four2         
posicion3 10				
print four3          
posicion3 11				
print four4         
posicion3 12
print four5 
posicion3 13
 jmp teclaF   


 NUM5555: 
posicion3 8
print five1
posicion3 9
print five2         
posicion3 10				
print five3          
posicion3 11				
print five4         
posicion3 12
print five5
posicion3 13
jmp teclaF

 NUM6666:
posicion3 8
print six1
posicion3 9
print six2         
posicion3 10				
print six3          
posicion3 11				
print six4         
posicion3 12
print six5
posicion3 13
jmp teclaF 

  NUM7777:
posicion3 8
print seven1
posicion3 9
print seven2         
posicion3 10				
print seven3          
posicion3 11				
print seven4         
posicion3 12
print seven5
posicion3 13

jmp teclaF 


  NUM8888:
posicion3 8
print eigth1
posicion3 9
print eigth2         
posicion3 10				
print eigth3          
posicion3 11				
print eigth4         
posicion3 12
print eigth5
posicion3 13
jmp teclaF


   NUM9999:
posicion3 8
print nine1
posicion3 9
print nine2         
posicion3 10				
print nine3          
posicion3 11				
print nine4         
posicion3 12
print nine5
posicion3 13
 
 jmp teclaF    



;VERIFICAR SI SE PREICIONO LA TECLA F nO FUNCIONA EN EMU

teclaF:

mov ah, 01h ;TECLA F
int 11h
jz CAPTURA ;NINGUNO
mov ah, 00h ;QUE LETRA SE PRESIONO?
int 11h
cmp al, 66h
jne NUM0

mov ax, 4c00h

int 21h


endp
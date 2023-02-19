; ----------------------------------------------------------------------
; A simple program to illuminate the LED
; LED which is connected to RA3 need to be illuminate
; ----------------------------------------------------------------------
;
; -------------------- Select the project target -----------------------
;
list p=16f877A
;
; -------------------- Program Equates ---------------------------------
;
#include "p16f877a.inc"

; CONFIG
; __config 0x3FFA
__CONFIG _FOSC_HS & _WDTE_OFF & _PWRTE_OFF & _BOREN_ON & _LVP_ON & _CPD_OFF & _WRT_OFF & _CP_OFF
status equ 0x03
trisa equ 0x85
porta equ 0x05
;W equ 0
;f equ 1
counter equ 22h
;
;
; --------------------- Main Program -----------------------------------
;
org 0x00

GOTO main

ORG 0x04
 


main:
    BSF STATUS, RP0   ; bank 1 selection
   
    ;Junction 1  
    BCF TRISB, 6      
    BCF TRISB, 5      
    BCF TRISB, 4      
    BCF TRISB, 7       
    
    ;Junction 2
    BCF TRISB, 1      
    BCF TRISB, 2      
    BCF TRISB, 3      
    BCF TRISB, 0      
    
    ;Junction 3
    BCF TRISD, 1      
    BCF TRISD, 2      
    BCF TRISD, 3      
    BCF TRISD, 0      
    
    ;Junction 4
    BCF TRISC, 6
    BCF TRISC, 5
    BCF TRISC, 4
    BCF TRISC, 7
    
    ;Junction 5
    BCF TRISC, 2     
    BCF TRISC, 1      
    BCF TRISC, 0      
    BCF TRISC, 3
    
    BCF STATUS, RP0   ; Select bank 0


loop:	
    
    ;Junction 1    
    BCF TRISB, 6      
    BCF TRISB, 5      
    BSF TRISB, 4      
    BCF TRISB, 7
    
    ;Junction 2
    BCF TRISB, 1      
    BSF TRISB, 2      
    BCF TRISB, 3      
    BSF TRISB, 0      
    
    ;Junction 3
    BCF TRISD, 1      
    BSF TRISD, 2      
    BCF TRISD, 3      
    BSF TRISD, 0      
    
    ;Junction 4
    BCF TRISC, 6
    BSF TRISC, 5
    BCF TRISC, 4
    BSF TRISC, 7
    
    ;Junction 5
    BSF TRISC, 2      
    BCF TRISC, 1      
    BCF TRISC, 0      
    BCF TRISC, 3
        
    CALL delay_loop           
    
    ;Junction 1    
    BSF TRISB, 6      
    BCF TRISB, 5      
    BCF TRISB, 4      
    BCF TRISB, 7
    
    ;Junction 2
    BCF TRISB, 1      
    BCF TRISB, 2      
    BSF TRISB, 3      
    BCF TRISB, 0      
    
    ;Junction 3
    BCF TRISD, 1      
    BSF TRISD, 2      
    BCF TRISD, 3      
    BSF TRISD, 0      
    
    ;Junction 4
    BCF TRISC, 6
    BSF TRISC, 5
    BCF TRISC, 4
    BSF TRISC, 7
    
    ;Junction 5
    BCF TRISC, 2      
    BSF TRISC, 1      
    BCF TRISC, 0      
    BSF TRISC, 3    
    
    CALL delay_loop        ; Call delay subroutine    
    	
    ;Junction 1    
    BCF TRISB, 6      
    BSF TRISB, 5      
    BCF TRISB, 4      
    BSF TRISB, 7
    
    ;Junction 2
    BSF TRISB, 1      
    BCF TRISB, 2      
    BCF TRISB, 3      
    BCF TRISB, 0      
    
    ;Junction 3
    BCF TRISD, 1      
    BCF TRISD, 2      
    BSF TRISD, 3      
    BCF TRISD, 0      
    
    ;Junction 4
    BCF TRISC, 6
    BSF TRISC, 5
    BCF TRISC, 4
    BSF TRISC, 7
    
    ;Junction 5
    BCF TRISC, 2      
    BSF TRISC, 1      
    BCF TRISC, 0      
    BSF TRISC, 3    
    
    CALL delay_loop        ; Call delay subroutine    
    
    ;Junction 1    
    BCF TRISB, 6      
    BSF TRISB, 5      
    BCF TRISB, 4      
    BSF TRISB, 7
    
    ;Junction 2
    BCF TRISB, 1      
    BSF TRISB, 2      
    BCF TRISB, 3      
    BSF TRISB, 0      
    
    ;Junction 3
    BSF TRISD, 1      
    BCF TRISD, 2      
    BCF TRISD, 3      
    BCF TRISD, 0      
    
    ;Junction 4
    BCF TRISC, 6
    BCF TRISC, 5
    BSF TRISC, 4
    BCF TRISC, 7
    
    ;Junction 5
    BCF TRISC, 2      
    BSF TRISC, 1      
    BCF TRISC, 0      
    BSF TRISC, 3
    
    CALL delay_loop        ; Call delay subroutine
    
    ;Junction 1    
    BCF TRISB, 6      
    BSF TRISB, 5      
    BCF TRISB, 4      
    BSF TRISB, 7
    
;    ;Junction 2
;    BCF TRISB, 1      
;    BSF TRISB, 2      
;    BCF TRISB, 3      
;    BSF TRISB, 0      
;    
    ;Junction 3
    BCF TRISD, 1      
    BSF TRISD, 2      
    BCF TRISD, 3      
    BSF TRISD, 0      
;    
    ;Junction 4
    BSF TRISC, 6
    BCF TRISC, 5
    BCF TRISC, 4
    BCF TRISC, 7
;    
    ;Junction 5
    BCF TRISC, 2      
    BCF TRISC, 1      
    BSF TRISC, 0      
    BCF TRISC, 3    
    
    CALL delay_loop        ; Call delay subroutine

    GOTO loop         

      

    DELAY_COUNT1:
    DW 0
    DELAY_COUNT2:
    DW 0
    MOVLW 0xfffffffff
    MOVWF DELAY_COUNT1
    MOVLW 0xfffffffff
    MOVWF DELAY_COUNT2
delay_loop:
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    NOP
    

    DECFSZ DELAY_COUNT1, F
    GOTO delay_loop
    
    DECFSZ DELAY_COUNT2, F
    GOTO delay_loop
    
    RETURN            ; Return from subroutine    
    
End
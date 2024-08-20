; This program adds and subtracts integers, defines and uses symbolic constants, and uses variables of all assembly language's data types.
; Kylie Heiland
; 9/13/22

.386
.model flat,stdcall
.stack 4096
ExitProcess proto,dwExitCode:dword

.data
     Sunday = 1     ; Sunday is the first day of the week.
     Monday = 2     ; Monday is the second day of the week.
     Tuesday = 3    ; Tuesday is the third day of the week.
     Wednesday = 4  ; Wednesday is the fourth day of the week.
     Thursday = 5   ; Thursday is the fifth day of the week.
     Friday = 6     ; Friday is the sixth day of the week.
     Saturday = 7   ; Saturday is the seventh day of the week.
     DaysOfTheWeek BYTE Sunday,Monday,Tuesday,Wednesday,Thursday,Friday,Saturday     ; Array uses the seven symbols from above as initializers.

     value1 BYTE 67                     ; Initializes the variable to 67.
     value2 SBYTE +2                    ; Initializes value2 to a valid variable (+2).
     value3 WORD 9102                   ; Initializes value3 to a value (9102) that is less than the largest unsigned value (65535) for WORD.
     value4 SWORD -32100                ; Initializes value4 to -32100, which is a little larger than the smallest signed value (-32768) for SWORD.
     value5 DWORD 6ABh                  ; Initializes value5 to 6ABh, which is 11010101011b and is greater than 1 bit and less than or equal to 32 bits.
     value6 SDWORD -21474               ; Initializes value6 to -21474
     value7 FWORD 420AB169AC01h         ; Initializes value7 to 420AB169AC01h, which is 48 bits.
     value8 QWORD 1234567812345678h     ; Initializes value8 to 1234567812345678h, which is 64 bits.
     value9 TBYTE 80000000000000001234h ; This particular data type must be in hexadecimal.
     value10 REAL4 -1.2                 ; Single-precision floating-point variable.
     value11 REAL8 3.2E-260             ; Single-precision floating-point variable.
     value12 REAL10 4.6E+4096           ; Single-precision floating-point variable.

     string1 TEXTEQU <"Taylor Swift's newest album is coming out October 21st!">                                        ; Initializes string1 to a string literal.
     importantNews BYTE string1    ; Uses the symbolic name to initialize importantNews.
     
     string2 TEXTEQU <"Red Dead Redemption is the best open-world, adventure game that I have ever played!">            ; Initializes string2 to a string literal.
     facts BYTE string2            ; Uses the symbolic name to initialize facts.

     string3 TEXTEQU <"Assembly language is a difficult type of programming language to learn, but it is worth it!">    ; Initializes string3 to a string literal.
     hardwork BYTE string3         ; Uses the symbolic name to initialize hardwork.
     
.code
main proc	
     mov eax,5	     ; EAX has an integer value of 5.
     mov ebx, 7     ; EBX has an integer value of 7.
     mov ecx, 1     ; ECX has an integer value of 1.
     mov edx, 5     ; EDX has an integer value of 5.			
     add eax, ebx   ; Adds 5 and 7. eax now equals 12.
     add ecx, edx   ; Adds 1 and 5. ecx now equals 6.
     sub eax, ecx   ; Subtracts 6 from 12.
	invoke ExitProcess,0
main endp
end main
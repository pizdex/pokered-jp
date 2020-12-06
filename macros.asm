INCLUDE "macros/farcall.asm"

dr: MACRO
; IF DEF(RED)
INCBIN "baserom/baserom-red.gb", \1, \2 +- \1
; ELSE
; IF DEF(GREEN)
; INCBIN "baserom/baserom-green.gb", \1, \2 +- \1
; ENDC
; ENDC
ENDM

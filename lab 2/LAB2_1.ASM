data          SEGMENT  byte
 a1		dw	'1'	
 a2 	dw 	'2'
 a3		db   3
 a4		db 	 4
 a5		dw	'5'	
 a6 	dw 	'6'
 a8		db   8
 a9		db 	 9

data          ENDS

code          SEGMENT
              ASSUME   cs:code,ds:data
                             
begin:
              mov  ah, a1            
              mov  al, a2
              mov  bh, a3
              mov  bl, a4
              mov  ch, a5
              mov  cl, a6
              mov  dh, a7 
              mov  dl, a8

              mov  a1, al
              mov  a2, cl 
              mov  a3, dh
              mov  a4, dl
              mov  a5, al
              mov  a6, ch
              mov  a7, bl
              mov  a8, bh
     
           
              int      21h

code          ENDS
              end      begin


@0  mov 0, r0      //r0=@ destino del resultado suma
@1  mov 1, r1      //sumando del contador del bucle
@2  mov 0, r2      //suma
@3  mov 0, r3      //contador
@4  mov 6, r4      //comparador bucle
@5  mov 33, r5     //r5= @base + 1, (755232%100) + 1 = 33 
@6  nop
@7  nop
@8  beq r3, r4, 12 // si contador == comparador, salta
@9  nop
@10 ld  r5, r6     //r6= mem(r5)
@11 nop
@12 nop
@13 nop
@14 add r6, r2, r2 //actualizo suma
@15 add r1, r5, r5 //actualizo dirección de memoria 
@16 add r1, r3, r3 // contador++ 
@17 beq r1, r1, 6  //salto incondicional a primer beq
@18 nop
@19 st  r2, r0     //guardo suma en @0 de memoria
---------------------------------------------------EXTENSIÓN OK, NO OK--------------------------------------
@20 mov 24, r9     //resultado correcto de la suma    
@21 mov 0xffff, r7 //r7=@tty
@22 nop
@23 nop
@24 beq r2, r9, 41 //salta si suma == resultado correcto
@25 nop
@26 mov 78, r8     //r8='N'
@27 nop
@28 nop
@29 nop
@30 st  r8, r7     
@31 mov 79, r8     //r8='O'
@32 nop
@33 nop
@34 nop
@35 st  r8, r7     
@36 mov 32, r8     //r8=' '
@37 nop
@38 nop
@39 nop
@40 st  r8, r7     
@41 mov 79, r8     //r8='O'
@42 nop
@43 nop
@44 nop
@45 st  r8, r7
@46 mov 75, r8     //r8='K'
@47 nop
@48 nop
@49 nop
@50 st  r8, r7

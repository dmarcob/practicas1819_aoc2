@0  mov 0, r2      //suma
@1  mov 0, r3      //contador
@2  mov 6, r4      //comparador bucle
@3  mov 33, r5     //r5= @base + 1, (755232%100) + 1 = 33 
@4  mov 0, r0      //r0=@ destino del resultado suma
@5  mov 1, r1      //sumando del contador del bucle
@6  beq r3, r4, 16 // si contador == comparador, salta
@7  nop
@8  ld  r5, r6     //r6= mem(r5)
@9  add r1, r5, r5 //actualizo dirección de memoria 
@10 nop
@11 nop
@12 add r6, r2, r2 //actualizo suma
@13 add r1, r3, r3 // contador++ 
@14 beq r1, r1, 6  //salto incondicional a primer beq
@15 nop

---------------------------------------------------EXTENSIÓN OK, NO OK--------------------------------------
@16 mov 24, r9     //resultado correcto de la suma    
@17 mov 0xffff, r7 //r7=@tty
@18 st  r2, r0     //guardo suma en @0 de memoria
@19 nop
@20 beq r2, r9, 37 //salta si suma == resultado correcto
@21 nop
@22 mov 78, r8     //r8='N'
@23 nop
@24 nop
@25 nop
@26 st  r8, r7     
@27 mov 79, r8     //r8='O'
@28 nop
@29 nop
@30 nop
@31 st  r8, r7     
@32 mov 32, r8     //r8=' '
@33 nop
@34 nop
@35 nop
@36 st  r8, r7     
@37 mov 79, r8     //r8='O'
@38 mov 75, r8     //r8='K'
@39 nop
@40 nop
@41 st  r8, r7
@42 st  r8, r7

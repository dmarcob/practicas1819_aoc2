@0  mov 0, r0      //r0=@ destino del resultado suma
@1  mov 1, r1      //sumando del contador del bucle
@2  mov 0, r2      //suma
@3  mov 0, r3      //contador
@4  mov 6, r4      //comparador bucle
@5  mov 33, r5     //r5= @base + 1, (755232%100) + 1 = 33 
@6  beq r3, r4, 12 // si contador == comparador, salta
@7  ld  r5, r6     //r6= mem(r5)
@8  add r6, r2, r2 //actualizo suma
@9  add r1, r5, r5 //actualizo dirección de memoria 
@10 add r1, r3, r3 // contador++ 
@11 beq r1, r1, 6  //salto incondicional a primer beq
@12 st  r2, r0     //guardo suma en @0 de memoria
---------------------------------------------------EXTENSIÓN OK, NO OK--------------------------------------
@13 mov 24, r9     //resultado correcto de la suma    
@14 mov 0xffff, r7 //r7=@tty
@15 beq r2, r9, 22 //salta si suma == resultado correcto
@16 mov 78, r8     //r8='N'
@17 st  r8, r7     
@18 mov 79, r8     //r8='O'
@19 st  r8, r7     
@20 mov 32, r8     //r8=' '
@21 st  r8, r7     
@22 mov 79, r8     //r8='O'
@23 st  r8, r7
@24 mov 75, r8     //r8='K'
@25 st  r8, r7

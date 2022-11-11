function [id,jd]=posDestino(i,j,mov,laberinto)
 %pos inicial por si se sale
 i_i=i,j_i=j
 %movimiento abajo
 if mov=2 
   i=i+1
   j=j
 %movimiento izquierda
 elseif mov=4
   i=i
   j=j-1
 %movimiento derecha
 elseif mov=6
   i=i
   j=j+1
 %movimiento arriba
 elseif mov=8
   i=i-1
   j=j
 endif
 %si no se sale y no cae en una pared cambia las pos de destino por las pos desp del mov
 if (i<=20 && j<=20) && laberinto(i,j)~=1
   id=i
   jd=j
 %si se sale deja las pos de destino como las iniciales
 else 
   id=i_i
   jd=j_i
 endif
endfunction
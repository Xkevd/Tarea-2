function [id,jd]=posDestino(i,j,mov,laberinto)
%pos inicial por si se sale
i_i=i;
j_i=j;
%movimientos
if(mov==2) 
  i=i+1;
  j=j;
elseif(mov==4)
  i=i;
  j=j-1;
elseif(mov==6)
  i=i;
  j=j+1;
elseif(mov==8)
  i=i-1;
  j=j;
endif
%si no se sale, si no cae en pared, y si i o j son mayores a cero (o sea se encuentran dentro del laberinto)
if((i>0 && j>0) && (i<=20) && (j<=20) && laberinto(i,j)==0)
  id=i;
  jd=j;
%si se sale deja las pos de destino como las iniciales
else 
  id=i_i;
  jd=j_i;
endif
endfunction
function camino=encontrarCamino(i_O,j_O,i_f,j_f,laberinto)
  if posDestino(i_O,j_O,2,laberinto)==(i_f,j_f)%no se si este if funciona pero es ver si el punto al que va avanzar es el final
    camino=[i_O,j_O; i_f,j_f]
  elseif laberinto(i_O+1,j_O)==0%busca todas las posibilidaddes de por donde avanzar
    laberinto(i_O,j_O)=2 %ir marcando los recorridos que hizio
    camino=encontrarCamino(i_O+1,j_O,i_f,j_f,laberinto)%se mueve hasta llegar al paso base y me da los dos ultimos puntos
    camino=[i_O,j_O; camino] %agrega el punto actual al camino que tenia
  elseif laberinto(i_O,j_O+1)==0
    laberinto(i_O,j_O)=2 
    camino=encontrarCamino(i_O,j_O+1,i_f,j_f,laberinto)
    camino=[i_O,j_O; camino]
  elseif laberinto(i_O,j_O-1)==0
    laberinto(i_O,j_O)=2 
    camino=encontrarCamino(i_O,j_O-1,i_f,j_f,laberinto)
    camino=[i_O,j_O; camino]
  elseif laberinto(i_O-1,j_O)==0
    laberinto(i_O,j_O)=2 
    camino=encontrarCamino(i_O-1,j_O,i_f,j_f,laberinto)
    camino=[i_O,j_O; camino]
    
  endif
  %ningun movimiento es posible y tampoco llego al final
  if laberinto(i_O+1,j_O)==2 %busca por donde vino en todas las direcciones
    laberinto(i_O,j_O)=1 %transforma en pared donde definitivamente no funciona 
    (n,m)=size(camino)%veo las filas del camino para saber donde termina y poder hacer el que agarre el camino desde el segundo punto hasta el final
    camino=camino(2:n,:)%elimino el ultimo punto del camino
    encontrarCamino(i_O+1,j_O,i_f,j_f,laberinto)%sigo avanzando hacia donde ya habia recorrido para que se fije por donde puede avanzar
  
 %las paredes no me importan porque siempre va a tener el orden de mirar primero si hay camino vacio, despues si hay camino que ya recorrio,
 %entonces nunca se va a rodear de paredes sin llegar al final
 %si llega hasta aca despues de pasar por todos los if es que se rodeo de paredes despues de volver del ultimo camino que habia recorrido
 %y entonces "camino" nunca va a haberse creado
  else 
  camino=[]
  
  endif
%se pueden juntar los if con el elseif pero lo deje asi para que se enstendiera la idea, de primero ver caminos posibles con labernoto=0 
%despues ver caminos que ya recorrio con laberinto=2
%y si llega a no poder avanzar ni volver es que no es posible llegar y hace que camino exista y sea vacio
%falta escribir las variaciones de avance, las variaciones de volver por el camino y las variaciones de el movimiento final que generan "camino"
%en principio anda la idea al menos




 
endfunction
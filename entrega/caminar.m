function [i_f,j_f]=caminar(i_o,j_o,movs,laberinto)
    if length(movs)==0
        [i_f,j_f]=[i_o,j_o]
    elseif length(movs)==1
        [i_f,j_f]=posDestino[i_o,j_o,movs[1],laberinto]       
    else
        [i_f,j_f]=caminar(i_f,j_f,movs[2:length(movs)],laberinto)
endfunction

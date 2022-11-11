function [i_f,j_f]=caminar(i_o,j_o,movs,laberinto)
    %iterar sobre vector v con posDestino
    lv = length(movs)
    for f = 1:lv
        mov = movs[f]
        [i_o, j_o] = posDestino[i_o, j_o, mov, laberinto]
    endfor
    i_f = i_o
    j_f = j_f
endfunction

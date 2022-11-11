function []=veoLab(laberinto)
aux=ones(22);
aux(2:21,2:21)=2*abs(laberinto - 1);
imshow([aux]/2)
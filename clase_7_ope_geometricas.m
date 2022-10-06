clear all
close all
clc

img = imread("imagen_2.jpg");

figure(1)
imshow(img)


%% Desplazamiento

%d = [100, 100];                     %Vector de desplazamiento (renglones y columnas)
d = [-100, -100];                     %Vector de desplazamiento (renglones y columnas) sentido negativo

% Opcion conserva parametros de la imagen original
%img_despl = imtranslate(img,d);     %Translacion en el espacio de la imagen (cuadro de la resolucion original)

% Imagen presente el desplazamiento pero que se presente todo el contenido
% de la imagen original + el desplazamiento
img_despl = imtranslate(img,d,'OutputView','full');     %Translacion en el espacio de la imagen (cuadro de la resolucion original)

figure(2)
imshow(img_despl)


%% Escalamiento

%img_esc = imresize(img, 3, "bicubic");      %Metodo 1 - Factor de escala




%% Escalamiento (Columnas y renglones)

img_esc = imresize(img,[500, 1000]);      %Metodo 2 - Factor de escala columnas y renglones (nearest x defecto)

figure(3)
imshow(img_esc)

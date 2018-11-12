%% Practica 4. Convoluci�n y Correlaci�n de se�ales en tiempo continuo
% RPL04
%% Integrantes
% 
% # Gardu�o Sandoval Susana Itzel
% # Villavicencio Castillo Rodrigo Adrian
% # Vargas Martinez Javier
% 

%% Objetivos
% 
% # Conocer m�todos b�sicos de integraci�n num�rica
% # Manipulaci�n de instrucciones en MATLAB
% # Simular convoluciones y correlaciones de se�ales continuas
%% Introducci�n
% Como introducci�n elabore un reporte de los m�todos descritos 
% en la lista de reproducci�n que incluya el desarrollo de los ejemplos expuestos.
%%
% <<img1.jpg>>
%%
% <<img2.jpg>>
%%
% <<img3.jpg>>
%%
% <<img4.jpg>>
%%
% <<img5.jpg>>
%%
% <<img5.jpg>>
%% Nota
% Se realizo un cambio al archivo convconm convirtiendola en convGrl. Es en
% convGral donde se trato de hacerlo m�s general, haciendo que la gr�fica
% se acomodara automaticamente en lo largo (encontrando en donde
% iba a existir la convoluci�n) y en la altura (determinando los puntos m�s
% grandes que de la convoluci�n)
%%
% <include>convGral.m</include>
%
% El archivo anterior utliza los siguientes archivos
%%
% <include>UltimoValor.m</include>
%
% Archivo UltimoValor
%% 
% <include>PrimerValor.m</include>
%
% Archivo PrimerValor
%% 
% <include>Finaliza.m</include>
%
% Archivo Finaliza
%%
% <include>Comienza.m</include>
%
% Archivo Comienza
%% PR04. Ejercicio 1.
%%
% <<Ej11.png>>
%%
% <<Ej12.png>>

%%
% Grafica con la funci�n convoluci�n
figure
x = @(t) (t>0 & t<1);
k = x(linspace(-2,2));
plot(linspace(-2,2), k);

figure
h = @(t) (-t+1).*(t>0 & t<1) + (t-1).*(t>1 & t<2);
m = h(linspace(-1,3));
plot(linspace(-1,3), m);

convGral(x,h);
%%
% <<ej13.PNG>>

%% Grafica con piecewise
%%
% <<grafica1.png>>
%%
% <<ConvoPractica4_01.png>>

%% PR04. Ejercicio 3.
%%
% <<ej21.PNG>>
%%
% <<ej22.PNG>>
%%
% Grafica con la funci�n convoluci�n
figure
x = @(t) (t>1 & t<3);
k = x(linspace(-1,4));
plot(linspace(-1,4), k);

figure
h = @(t) (t).*(t>0 & t<=1) + (t>1 & t<2);
m = linspace(-1,3);
plot(m, h(m));

convGral(x,h);
%%
% <<ej23.PNG>>

%%
% Gr�fica con piecewise
%%
% <<grafica2.png>>
%%
% <<ConvoPractica4_02.png>>

%% 	PR06. Ejercicio E.
% Autocorrelacion de la siguiente se�al
%%
% <<ej31.PNG>>
x =@(t) (t>0 & t<3) - (t>=3 & t<4);
h = @(t) -(t>=-4 & t<-3) + (t>=-3 & t<=0);

%Para graficar
m = linspace(-1, 5);
figure
plot(m, x(m));

k = linspace(-5, 1);
figure
plot(k, h(k));

% Gr�fica con la funci�n convoluci�n
convGral(x,h);

%%
% <<ej32.PNG>>

%%
% Gr�fica con piecewise
%%
% <<grafica3.png>>
%%
% <<ConvoPractica4_03.png>>

%% 	PR06. Ejercicio F.
% Correlacion de la siguiente se�al
%%
% <<ej41.PNG>>
%%
%<<ej42.PNG>>

x1 =@(t) (t>0 & t<3) - (t>=3 & t<4);
x0 = @(t) (t>=0 & t<2) - (t>=2& t<=4);

x0_prima = @(t) -(t>=-4 & t<-2) + (t>=-2& t<=0);

%Para graficar
g = linspace(-1, 5);
figure
plot(g, x1(g));

w = linspace(-4, 5);
figure
plot(w, x0(w));

d = linspace(-5, 1);
figure
plot(d, x0_prima(d));

% Gr�fica con la funci�n convoluci�n
convGral(x1,x0_prima);
%%
% <<ej43.PNG>>

%%
% Gr�fica con piecewise
%%
% <<grafica4.png>>
%%
% <<ConvoPractica4_04.png>>

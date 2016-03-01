%% Example of window glass
    
f = [3; 5];

A = [1 0;
     0 2;
     3 2];

b = [4; 12; 18];
 
lb = [0 0]; 

[x , fval] = linprog(-f , A , b , [] , [] , lb);  % Maximize the value of f therefore f must be inverse function to maximze the gain of objetive function.
 
fval = -fval;

%% Example Ratio therapy... :)

f = [0.4; 0.5];

A = [0.3 0.1;
    -0.6 -0.4];

b = [2.7; -6];

Aeq = [0.5 0.5];

beq = 6;

lb = [0 0];

[x , fval] = linprog(f , A , b , Aeq , beq , lb);


% x is the optimize solution to the ray 1 4.5 and the ray 2 7.5

%% Example 	blast furnace business Nori & Co.

f = [8 10 7 6 11 9];

A = [12 9 25 20 17 13;
     35 42 18 31 56 49;
     37 53 28 24 29 20];
 
 b = [60 ; 150 ; 125];
 
 lb = [0 0 0 0 0 0];
 
 ub = [1 1 1 1 1 1];
 
[x , fval]  = linprog(f , -A , -b , [] , [] , lb , ub);

% X are the use of the technology inside the business in gain of this
% technology between 0 and 1.

%% Example of Union Arways to hire security personal.


f = [170 160 175 180 195]; % Minimze problem then the objective function is not inverse the inverse is to the maximize

A = [1 0 0 0 0;
     1 1 0 0 0;
     1 1 0 0 0;
     1 1 1 0 0;
     0 1 1 0 0;
     0 0 1 1 0;
     0 0 1 1 0;
     0 0 0 1 0;
     0 0 0 1 1;
     0 0 0 0 1];

b = [48; 79; 65; 87; 64; 73; 82; 43; 52; 15]; 
 
lb = [0 0 0 0 0]; 

[x , fval] = linprog(f , -A , -b , [] , [] , lb);

%x are the number of staff or workers neccesaries in each shift to achieve the objectives of security inside the business.

%% Window glass with shadow prices

f = [3; 5];

A = [1 0;
     0 2;
     3 2];

b = [4; 12; 18];
 
lb = [0 0]; 

[x , fval , exitflag , output , lambda] = linprog(-f , A , b , [] , [] , lb);  % Maximize the value of f therefore f must be inverse function to maximze the gain of objetive function.
 
fval = -fval;


%lambda.ineqlin

%ans =

%    0.0000
%    1.5000
%    1.0000

% we have got an increase of 1.5 in the objective function per unit of
% increase in the resource b_2 in the resource b_3 we have got an increase
% of 1 unit per unit of resources, an increase of 0.5 in the resource b_2
% we have got an increase of 0.75 in the objetive function...

%% Gasoil mixtures.

f = [0.14; 0.1; 0.15; 0.12; 0.14; 0.1; 0.15; 0.12];


A = [0.1 0.4 0.2 0.1 0.0 0.0 0.0 0.0;
     0.0 0.0 0.0 0.0 -0.8 -0.3 -0.7 -0.4;
     0.0 0.0 0.0 0.0 0.1 0.4 0.2 0.1];

b = [0.18; -0.6; 0.35];

Aeq = [1 1 1 1 0 0 0 0
       0 0 0 0 1 1 1 1];

beq = [1; 1];

lb = zeros(1 , 8);

ub = ones(1 , 8);

[x , fval , exitflag , output , lambda] = linprog(f  , A , b , Aeq , beq , lb , ub);



% fval is the cost of gasoil become from the mixture of crude 2 litter of
% gaoil one litter type A an one type B.

% x are the values of kind of gasoil associate to Crude type in the
% mixture.


%x =

%    0.0000
%    0.2667
%    0.0000
%    0.7333  proporcion de gaoil A en crudo de tipo 4 un litro.
%    0.6000
%    0.4000
%    0.0000
%    0.0000

%fval =
%
%    0.2387  Valor minimizado del coste de la mezcla de crudos para la suma de un litro de cada gasoil.

%% Problema de programacion entera binaria

%debemos cambiar el signo de la funcion objetivo para que haga una maximizacion...
f = [-9;-5;-6;-4];

 A = [6 3 5 2
      0 0 1 1
      -1 0 1 0
       0 -1 0 1];
   
 b = [10;1;0;0];
 
 lb = zeros(4,1);
 ub = ones(4,1);
 intcon = [1 2 3 4];
 [x,fval,exitflag,output] = intlinprog(f,intcon,A,b,[],[],lb,ub);
 
 
 %La solucion es que se construya fabrica tanto en los angeles como en
 %california sin almacenes.
 
 
 %% Ejercicio examen
 
f = [3; 4; 5; 6; 7; 8; 9; 10; 11; 12];
 
A = [0 0 0 -1 -1 0 0 0 0 0 
     0 0 -1 0 0 0 0 0 0 1
     0 -1 0 0 1 1 0 0 0 0
     -1 -1 0 0 0 1 0 0 0 0 
      13 14 15 16 17 18 19 20 21 22];
  
 b = [-1;0;1;0;101];
  
Aeq = [1 1 1 0 0 0 0 0 0 0];

beq = [1];

intcon =  [1 2 3 4 5 6 7 8 9 10];

lb = zeros(10 , 1);
ub = ones(10 , 1);
[x , fval , exitflag , output] = intlinprog(-f , intcon , A , b , Aeq , beq , lb ,ub);

fval = -fval;

%% ejercicio restricciones 

M = 99999;

f = [2000;3000;4;0;0;0]; %miles de euros

A = [1.5 3  5  0  0  0; %acero usado por las antenas
     30 25 40  0  0  0; % horas de mano de obra
     -1  0  0  M  0  0 
      1  0  0 -M  0  0 
      0 -1  0  0  M  0
      0  1  0  0 -M  0
      0  0 -1  0  0  M
      0  0  1  0  0 -M];
 
  b = [6000;60000;-1000+M;0;-1000+M;0;-1000+M;0];

  lb = zeros(6,1);
  ub = [inf inf inf 1 1 1];
  intcon = [1 2 3 4 5 6];
 [x, fval, exitflag,output] = intlinprog(-f,intcon,A,b,[],[],lb,ub);
 
 fval = -fval;
 % fval 60.000.000 de ganancias en Euros de construir 2000 antenas del tipo 
 % 2 medianas.
 
 %% Problema Window glass funciones con N valores posibles.
 
 f = [3;5;0;0;0]; % en miles de euros.
 
 A = [1 0  0  0  0
      0 2  0  0  0];

 Aeq = [3 2 -6 -12 -18
        0 0  1   1  1];  
 
 beq =[0; 1];
  
 b = [4;12];
 
 intcon = [3 4 5];
 
 lb = zeros(1,5);
 
 ub = [inf inf 1 1 1];
 
 [x ,fval , exitflag , output] = intlinprog(-f , intcon , A , b , Aeq , beq , lb ,ub);
 
 %% Example blast furnace business Nori & Co. Costes fijos.

M = 99999;

f = [8 10 7 6 11 9 2 2];

A = [12 9 25 20 17 13 0 0;
     35 42 18 31 56 49 0 0;
     37 53 28 24 29 20 0 0;
     -1 0 0 0 0 0 M 0; 
     0 -1 0 0 0 0 0 M];
 
 b = [60 ; 150 ; 125;0 ;0];
 
 lb = [0 0 0 0 0 0 0 0];
 
 ub = [1 1 1 1 1 1 1 1];
 
 intcon = [7 8];
[x , fval]  = intlinprog(f ,intcon, -A , -b , [] , [] , lb , ub);

%% Example 	blast furnace business Nori & Co. Coste fijo

M = 99999;

f = [8 10 7 6 11 9 2 2];

A = [12 9 25 20 17 13 0 0;
     35 42 18 31 56 49 0 0;
     37 53 28 24 29 20 0 0;
     -1 0 0 0 0 0 M 0; 
     0 -1 0 0 0 0 0 M];
 
 b = [60 ; 150 ; 125;0 ;0];
 
 lb = [0 0 0 0 0 0 0 0];
 
 ub = [1 1 1 1 1 1 1 1];
 
 intcon = [7; 8];
[x , fval]  = intlinprog(f ,intcon, -A , -b , [] , [] , lb , ub);

% X are the use of the technology inside the business in gain of this
% technology between 0 and 1.

%% PROBLEMA DE EXAMEN
M = 999999;
f = [50 ; 60 ; 55 ; 80 ; -14500 ; -10000 ; 8000 ; -9000];

A = [10 15 5 14 0 0 0 0;
     0 0 0 0 1 0 -1 -1;
     1 0 0 0 -M 0 0 0; 
     0 1 0 0 0 -M 0 0 ;
     0 0 1 0 0 0 -M 0;
     0 0 0 1 0 0 0 -M];
b = [20000; 0; 0 ;0;0;0];

lb = zeros(1,8);
ub =[inf inf inf inf 1 1 1 1];
intcon = [5 6 7 8];

[x,fval] = intlinprog(-f,intcon,A,b,[],[],lb,ub);
fval = -fval;

% Solucion
% el resultado nos da x3 = 4000 e y3=1 ; el producto "C" es el que nos da
% una mayor ganancia y minimiza el coste inicial de la produccion; por
% otro lado, vemos que se cumple condicion logica ya que al no tener
% producto "A" no es necesario la produccion de los productos "C" y/o "D".
% El valor de ganancia (fval) nos da 228000 euros , que es lo que
% representa la maxima ganancia en la venta de unidades del producto "C".

%% Resolucion de optimización problema de transporte.


f = [464 ; 513 ; 654 ; 867 ; 352 ; 416 ; 690 ; 791 ; 995 ; 682 ; 388 ; 685];

Aeq = [1 1 1 1 0 0 0 0 0 0 0 0
       0 0 0 0 1 1 1 1 0 0 0 0
       0 0 0 0 0 0 0 0 1 1 1 1
       1 0 0 0 1 0 0 0 1 0 0 0
       0 1 0 0 0 1 0 0 0 1 0 0
       0 0 1 0 0 0 1 0 0 0 1 0
       0 0 0 1 0 0 0 1 0 0 0 1];
   
beq = [75 ; 125 ; 100 ; 80 ; 65 ; 70 ; 85];

lb = zeros(12 , 1);


[x , fval] = linprog (f , [] , [] , Aeq , beq , lb);

% valor de la funcion objetivo coste final del transporte de mercancía.
% variables de decisión numero de camiones a enviar a cada almacen desde
% cada fabrica de enlatado.

% Interpretacion final del vector de la solucion óptima de las variables
% de decisión para que otra persona sea capaz de interpretarlo.

% x12 20 unidades de la enlatadora 1 al almacen 2... x12 = 20.


%% Problema de transporte con exceso de demanda. METRO WATER...

M = 99999;

f = [16; 13; 22; 17; 14; 13; 19; 15; 19; 20; 23; M];

 
 b = [30 ; -50 ; 70 ; -70];

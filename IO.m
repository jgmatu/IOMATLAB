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


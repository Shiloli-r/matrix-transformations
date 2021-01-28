%plotting the object
 V = [5 4; 6 3; 5 2; 4 3];
 pgon = polyshape(V);
 plot(pgon); 
% hold on
 
 dx = 300; dy = 450;
 angle = 60;
 Sx = 2.3; Sy = 2.3;
 
 c1=[5;4;1]; c2=[4;3;1]; c3=[5;2;1]; c4=[6;3;1];
 T = [1 0 dx; 0 1 dy; 0 0 1];
 S = [Sx 0 0; 0 Sy 0; 0 0 1];
 R = [cos(deg2rad(angle)) -sin(deg2rad(angle)) 0; sin(deg2rad(angle)) cos(deg2rad(angle)) 0; 0 0 1];
 
%%% Translation -> Scaling -> Rotation(60 degrees)  %%%%%
dx = -305; dy = -453;
T1 = [1 0 dx; 0 1 dy; 0 0 1];
dx = 305; dy = 453;
T2 = [1 0 dx; 0 1 dy; 0 0 1];

%%% T  S  T1  R  T2 => coordinates
TransformationMatrix = T2 * R * T1 * S * T;
c1prime = TransformationMatrix * c1;
c2prime = TransformationMatrix * c2;
c3prime = TransformationMatrix * c3;
c4prime = TransformationMatrix * c4;

Vprime = [c1prime(1)  c1prime(2); c2prime(1)  c2prime(2); c3prime(1)  c3prime(2); c4prime(1)  c4prime(2)];
 pgon = polyshape(Vprime);
 figure;
 plot(pgon) 

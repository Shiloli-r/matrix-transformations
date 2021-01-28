%plotting the object
 V = [5 4; 6 3; 5 2; 4 3];
 pgon = polyshape(V);
 plot(pgon)
 figure
 plot(pgon); 
 hold on
 

T1 = [1 0 -5; 0 1 -3; 0 0 1];  % step 1
 
 RotationMatrix = [cos(deg2rad(45)) -sin(deg2rad(45)) 0; sin(deg2rad(45)) cos(deg2rad(45)) 0; 0 0 1];
 % defining the 4 coordinates as c1,c2,c3,c4
 c1=[5;4;1]; c2=[4;3;1]; c3=[5;2;1]; c4=[6;3;1];
 R1 = RotationMatrix * c1; % for coord 1
 R2 = RotationMatrix * c2;  % for coord 2
 R3 = RotationMatrix * c3; % for coord 3
 R4 = RotationMatrix * c4; % for coord 4
 
 T3 = [1 0 5; 0 1 3; 0 0 1];  % step 3
 
 
 TransformationMatrix = T3 * RotationMatrix * T1;
 %Multiplying the Matrices in the correct order
 product1 = TransformationMatrix * c1;
 product2 = TransformationMatrix * c2;
 product3 = TransformationMatrix * c3;
 product4 = TransformationMatrix * c4;
 
 %new coordinates for the image
 c1prime = product1(1:2);
 c2prime = product2(1:2);
 c3prime = product3(1:2);
 c4prime = product4(1:2);
 
 %plotting the image
 Vprime = [c1prime(1)  c1prime(2); c2prime(1)  c2prime(2); c3prime(1)  c3prime(2); c4prime(1)  c4prime(2)];
 pgon = polyshape(Vprime);
 
 plot(pgon) 
 figure
 plot(pgon)
 
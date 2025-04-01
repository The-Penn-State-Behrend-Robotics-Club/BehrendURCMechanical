format compact 
clc
clear

% This code determines the optimal length of each leg of the chassis of a
% rocker bogie system. Loop equations were used to write equations
% (provided below) that solve for the length of each part. The lengths that
% were solved, represent the distance between two pivots and NOT the length
% of the piece of aluminum. During design, this must be considered to
% figure out how long a piece of aluminum should be cut and what size each 
% plate should be to join two pivots.

% EQ1: Height = 40 cm therefore the vertical portion of L2, L3 and the 
% radius (rw) should equal 40
% 0*L1 + .707*L2 + 0.707*L3 + rw = 40

% EQ2: Wheel spacing in the back (wsb) needs to be such that the wheel do
% not collide when going downhill. This was found with a loop of L1, L2,
% and L3 as well as the radius.
% 0.707*L1 + 0.707*L2 - 0.707*L3 - 2*rw = wsb

% EQ3: The height of L1 should be equal to the vertical height of L2 and L3
% combined.
% 0.707*L1 - 0.707*L2 - 0.707L3 + 0*rw = 0

% EQ4: The wheel spacing in the front (wsf) is a constant (we chose 2cm).
% This is defined by the final loop which says that the horizontal length
% of 2 pieces of L3 and the wheel radii should equal wsf.
% 0*L1 + 0*L2 + 2*0.707L3 + 2*rw = wsf


%% Define Constants

rwt = 1/sqrt(2);            % Define 0.707 for simplicity
Wheel_Spacing_F = 2         % Semi-arbitrarily defined front wheel spacing
Wheel_Spacing_B = 6         % Iteratively solved back wheel spacing that 
                            % does not allow the rear wheel to collide when
                            % the bot goes down hill

A = [0 rwt rwt 1;
     rwt rwt -rwt -2
     rwt -rwt -rwt 0
     0 0 2*rwt -2];         % A matrix that combines the coefficients of 
                            % each equation 1-4

B = [40;Wheel_Spacing_B;0;Wheel_Spacing_F];     % The solution vector for 
                                                % the matrix math
   
soln = A\B;                 % Solve the matrix
    
L1 = soln(1)                
L2 = soln(2)
L3 = soln(3)
R_wheel = soln(4)           % Define the lengths of each leg and the wheel
                            % radius. This is the output of the program and
                            % the numbers you are looking for. Congrats!




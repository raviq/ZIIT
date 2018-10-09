function [phi_star]=markov_bacteria_three(p,q,tpms)
for count=1:tpms
nu=2500;
[tpm]=my_tpm3(p,q);
P = [tpm];
mc = dtmc(P);
numSteps = 1;
x0 = nu*ones(1,mc.NumStates);
numSteps = 1;
X = simulate(mc,numSteps,'X0',x0);
s_past=X(1,:);
sY=s_past-1;
c=decimalToBinaryVector(sY,3,'LSBFirst');
matrix_past=c';
s_present=X(2,:);
sYY=s_present-1;
cc=decimalToBinaryVector(sYY,3,'LSBFirst');
matrix_present=cc';
[Cov_X Cov_XY Cov_Y] = calculate_cov_matrix3(matrix_past,matrix_present);
type_of_phi='star';
[Z_MIP, phi_MIP] = MIP_Exhaustive( type_of_phi, Cov_X, Cov_XY, Cov_Y );
beta_init = 1;
Z = Z_MIP ;
phi_star(count)=phi_star_Gauss_fixed(Cov_X,Cov_XY,Cov_Y,Z,beta_init);
end
phi_star=sort(phi_star);
end
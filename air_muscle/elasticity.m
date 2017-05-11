%% ’e«—Í
function out = elasticity(u)
global L L_0 K
%% “ü—Í
eps = u(1);
%% ‰Šú‰»
% F_ten = zeros(1,1);
%% “±o
if(eps<=(L-L_0)/L)
    F_ten = -K*(L_0-L*(1-eps))^3;
else
    F_ten = 0;
end
%% o—Í
out = - F_ten;
end
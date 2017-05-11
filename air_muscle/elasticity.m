%% �e����
function out = elasticity(u)
global L L_0 K
%% ����
eps = u(1);
%% ������
% F_ten = zeros(1,1);
%% ���o
if(eps<=(L-L_0)/L)
    F_ten = -K*(L_0-L*(1-eps))^3;
else
    F_ten = 0;
end
%% �o��
out = - F_ten;
end
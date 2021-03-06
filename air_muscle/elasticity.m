%% 弾性力
function out = elasticity(u)
global L L_0 K
%% 入力
eps = u(1);
%% 初期化
% F_ten = zeros(1,1);
%% 導出
if(eps<=(L-L_0)/L)
    F_ten = -K*(L_0-L*(1-eps))^3;
else
    F_ten = 0;
end
%% 出力
out = - F_ten;
end
function K = rate_constant(T,t_const)
    if exist('R','var') ~= 1 %Universal gas constant
        R = 8.3145; %J/(mol*K)
        disp('[rate_constant.m]: R not found in workspace, generating new variable w/ value 296K.')
    end
    if exist('E_a','var') ~= 1 %Activation energy
        E_a = 40000; %J/mol
        disp('[rate_constant.m]: E_a not found in workspace, generating new variable w/ value 296K.')
    end
    k0 = pre_exponential_factor(t_const);
    K = k0*exp(-E_a/(R*T));
end
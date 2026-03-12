%Calculating Pre-exponential Factor
function k0 = pre_exponential_factor(t_const)
    if exist('T_peak','var') ~= 1 %Peak temperature rate
        T_peak = 296; %Kelvin
        disp('[pre_exponential_factor.m]: T_peak not found in workspace, generating new variable w/ value 296K.')
    end
    if exist('R','var') ~= 1 %Universal gas constant
        R = 8.3145; %J/(mol*K)
        disp('[pre_exponential_factor.m]: R not found in workspace, generating new variable w/ value 8.3145.')
    end
    if exist('E_a','var') ~= 1 %Activation energy
        E_a = 40000; %J/mol
        disp('[pre_exponential_factor.m]: E_a not found in workspace, generating new variable w/ value 40000.')
    end
    k0 = (1/t_const)*exp(-E_a/(R*T_peak));
end
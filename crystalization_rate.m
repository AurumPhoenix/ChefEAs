function d_phi = crystalization_rate(phi,T,t_const,dt)
    if exist('p','var') ~= 1 %Nucleation Order
        p = 1; % (Range 0.8 to 1.2, currently 1)
        disp('[crystalization_rate.m]: p not found in workspace, generating new variable w/ value 1.')
    end
    if exist('q','var') ~= 1 %Activation energy
        q = 2; % (Range 1.5 to 2.5, currently 2)
        disp('[crystalization_rate.m]: q not found in workspace, generating new variable w/ value 2.')
    end
    if exist('v','var') ~= 1 %Activation energy
        v = 2.25; % (Range 1.5 to 3, currently 2.25)
        disp('[crystalization_rate.m]: v not found in workspace, generating new variable w/ value 2.25.')
    end
    if exist('T_m','var') ~= 1 %Activation energy
        T_m = 306.8; %K (Range 32C to 34C, currntly 33.8C)
        disp('[crystalization_rate.m]: T_m not found in workspace, generating new variable w/ value 306.8K.')
    end
    phi = clip(phi,0,1);
    K = rate_constant(T,t_const);
    d_phi = dt*(K*(phi^p)*((1-phi)^q)*(T_m-T)^v);
end
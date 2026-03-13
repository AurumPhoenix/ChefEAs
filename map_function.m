function map = map_fun(N, M)

    for i = 1:N
        for j = 1:M
            map(i, j) = N*(j-1) + i;
            hold on
            plot(map(i), map(j), 'ro', 'MarkerSize', 20)
            
            text(i, j, num2str(map(i,j)), "HorizontalAlignment","center", 'Color','k')
        end
    end
end
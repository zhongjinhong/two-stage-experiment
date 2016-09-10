function [ Y ] = produce_label_instance(G, X, expert_num)
    n = size(X,1);
    probability_instance = rand(n,1);
    probability_label = rand(n,expert_num);
    Y = zeros(n,expert_num);
    for i = 1:n
        if probability_instance(i,1) < 0.5
            p = 0.9;
        else
            p = 0.55;
        end
        
        for t = 1:expert_num
            if probability_label(i,t) < p
                Y(i,t) = G(i,1);
            else
                Y(i,t) = -G(i,1);
            end
        end
        
    end
end
function [ Y ] = produce_label_annotator(G, X, expert_num)
    n = size(X,1);
    probability_annotator = 0.7;
    probability_label = rand(n,expert_num);
    Y = zeros(n,expert_num);
    for i = 1:n   
        index = randperm(expert_num);
        for t = 1:expert_num
            if find(index==t) > 100
                Y(i,t) = -2;
                continue;
            end
            
            if ( probability_label(i,t) < probability_annotator )
                Y(i,t) = G(i,1);
            else
                Y(i,t) = -G(i,1);
            end
        end
        
    end
end
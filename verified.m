function [p, r] = verified( estimate_accuracy, test_accuracy )

    estimate_accuracy = estimate_accuracy(:);
    test_accuracy = test_accuracy(:);
    [estimate_accuracy, index] = sort(estimate_accuracy);
    test_accuracy = test_accuracy(index);
    n = size(test_accuracy,1);
    count = 0;
    for i = 1:n-1
        value = test_accuracy(i);
        for j = i+1:n
            if(test_accuracy(j)>=value)
                count = count + 1;
            end
        end
    end
    p = 1 - count/nchoosek(n,2);
    cor = corrcoef(estimate_accuracy,test_accuracy);
    r = cor(1,2);
end


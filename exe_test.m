function [ accuracy ] = exe_test(W,X_test,G_test)
    n = size(X_test,1);
    method_num = size(W,2);
    
    X_test = [X_test,ones(n,1)];
    f_value = W'*X_test';
    accuracy = zeros(method_num,1);
    
    for i = 1:method_num;
        accuracy(i,1) = sum( f_value(i,:).*G_test'>0 )/n;
    end

end
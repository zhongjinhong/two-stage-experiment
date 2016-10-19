function [W_MV, G_MV] = Majority_Method(X,Y)

    index = find(sum(Y~=-2,2)>0);
    Y = Y(index,:);    
    [n,expert_num]=size(Y);

    Y_1 = (Y==1);
    Y_0 = (Y==0);
    pos_num = sum(Y_1,2);
    neg_num = sum(Y_0,2);    
    
    for i=1:n
        if( pos_num(i,1) < neg_num(i,1) )
            Y(i,1)=-1;
        elseif( pos_num(i,1) > neg_num(i,1) )
            Y(i,1)=1;
        else
            if(rand()<=0.5)
                Y(i,1)=1;
            else
                Y(i,1)=-1;
            end
        end
    end
    G_MV = Y(:,1);
    
    X_sparse = sparse([X ones(n,1)]);
    model_result = train(G_MV,X_sparse);
    w0= model_result.w;
    if(model_result.Label(1,1)~=1)
        w0=-w0;
    end        
    
    W_MV = w0';
    
    
end


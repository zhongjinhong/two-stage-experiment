function [W_DS, G_DS] = DS_Estimator(X,Y)

    emusinou=10^(-20);
%     [n,m]=size(Y);
    [n,expert_num] = size(Y);
    
    %%%%%% modified %%%%%%%%%%%%%%
    Y_1 = (Y==1);
    Y_0 = (Y==0);
    
    miu = ( sum(Y_1,2)+emusinou )./( sum(Y_1,2)+sum(Y_0,2)+2*emusinou );

    t=1;
    miu_old = miu;
    while t<=100
        %%%%%% modified %%%%%%%%%%%%%%
        alpha=( miu'*Y_1 + emusinou )./( miu'*(Y_1+Y_0)+2*emusinou );
        beta=( (1-miu)'*Y_0 + emusinou )./( (1-miu)'*(Y_1+Y_0)+2*emusinou );
        pi = sum(miu)/n;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        
        [ai,bi]=calculate_ai_bi(alpha,beta,Y);
        for i=1:n
            miu(i)=ai(i,1)*pi/( ai(i,1)*pi+bi(i,1)*(1-pi)+emusinou );
        end

 
        if max( abs(miu-miu_old) )>0.001;
            miu_old=miu;
        else
            break
        end
        t=t+1;   
        
        show_message=sprintf('t=%d',t);
        disp(show_message);
    end
    
    result = zeros(n,1);
    for i = 1:n
        if miu(i) >= 0.5
            result(i,1) = 1;
        else
            result(i,1) = -1;
        end
    end
    G_DS = result;
    

    X_sparse = sparse([X ones(n,1)]);
    model_result = train(G_DS,X_sparse);
    w0= model_result.w;
    if(model_result.Label(1,1)~=1)
        w0=-w0;
    end        
    
    W_DS = w0';    
    
end

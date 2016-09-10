function [result]=DS_Estimator(Y)

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
    
%     count=zeros(2*n,1);
%     for i = 1:n
%         count(i,1) = 1-miu(i);
%         count(n+i,1) = miu(i);
%     end
 
%     train_data=[X;X];
%     train_label=ones(2*n,1);
%     train_label(1:n,1) = -train_label(1:n,1);
%     weight=count;
%     Model=svmtrain(weight,train_label,train_data,svm_para);
% 
%     if (sum(weight(1:n))==0)
%         W =zeros(1,d+1);
%         W(1,d+1) = 1;
%     elseif (sum(weight(n+1:2*n))==0)
%         W =zeros(1,d+1);
%         W(1,d+1) = -1;
%     else
%         W=Model.sv_coef'*Model.SVs;
%         b=-Model.rho;
%         W=[W b];
%         if(Model.Label(1,1)~=1)
%             W=-W;
%         end           
%     end

    
end

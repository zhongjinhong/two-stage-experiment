function [w0, result]=PC(X,Y)
    options = optimset('GradObj','on');
    options.TolX=0.1;
    options.MaxFunEvals=1000;
    options.MaxIter=20;

    global w0 X_g Y_g miu_g;
    d=size(X,2);    
    w0=rand(d,1);
    X_g = X;

    [n,m]=size(Y);
    
    miu=1;eita=1;
    miu_g = miu;

    for j=1:m
        w(:,j)=rand(d,1);
    end

    t=1;
    while t<=10
        for j=1:m
%             [w(:,j),flag]=newton(w(:,j),@MAP,X,Y(:,j),miu);
            Y_g = Y(:,j);
            w(:,j) = fminlbfgs(@MAP1,w(:,j),options);
            show_message=sprintf('t=%d\tj=%d',t,j);
            disp(show_message);
            
        end
        w1=miu*sum(w,2)/(eita+m*miu);

        if norm(w1-w0,2)>0.001;
            w0=w1;
        else
            break
        end
        t=t+1;    
    end
    
    Y_e = zeros(n,m);
    for t = 1:m 
        Y_e(:,t) = X*w(:,t);
    end
    
    for i = 1:n
        for t = 1:m
            if(Y_e(i,t)>=0)
                Y_e(i,t) = 1;
            else
                Y_e(i,t) = -1;
            end
        end
    end
    
    
    result=sum(Y_e,2);
    for i=1:n
        if(result(i,1)<0)
            result(i,1)=-1;
        elseif(result(i,1)>0)
            result(i,1)=1;
        else
            if(rand()<=0.5)
                result(i,1)=1;
            else
                result(i,1)=-1;
            end
        end
    end
    
end
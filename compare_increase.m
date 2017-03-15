function [  ] = compare_increase( experiment_num )
    addpath('../tools');
    Initialization();
    svm_para=sprintf('%s','-s 0 -t 0');
    
%%%%%%%%%%%%%%debug%%%%%%%%%%%%%%%%%%%%%%%
% end_num = begin_num+1;
% total_repeat_num = 2;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    
    test_accuracy = zeros( 4, 10*(end_num-begin_num+1)*total_repeat_num  );
    estimate_accuracy = test_accuracy;
    for num=begin_num:end_num
        for repeat_num=1:total_repeat_num
            file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_',num*step_num,'_',repeat_num,'.mat');
            load(file_name);  
            file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_',num*step_num,'_',repeat_num,'.mat');
            load(file_name);  
            file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'G_',num*step_num,'_',repeat_num,'.mat');
            load(file_name);   

            file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_test_',num*step_num,'_',repeat_num,'.mat');
            load(file_name);   
            file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'G_test_',num*step_num,'_',repeat_num,'.mat');
            load(file_name);                       
            
            index = find(sum(Y~=-2,2)>0);
            X = X(index,:);
            Y = Y(index,:);                                    
            G = G(index,:);
            
            n=size(X,1);
            expert_num=size(Y,2);

            for i = 1:n
                for t = 1:expert_num
                    if (Y(i,t)==-1)
                        Y(i,t) = 0;
                    end
                end
            end

            for pro = 1:10
                instance_num = floor(pro*n/10);
                X1 = X(1:instance_num,:);
                Y1 = Y(1:instance_num,:);
                G1 = G1(1:instance_num,:);
                
                [W_MV, G_MV] = Majority_Method(X1,Y1); 
                [W_DS, G_DS] = DS_Estimator(X1,Y1);
                
                X1=[X1 ones(n,1)];
                [W_LFC, G_LFC] = LFC(X1,Y1);
                [W_PC, G_PC] = PC(X1,Y1);
                col_num = (pro-1)*(end_num-begin_num+1)*total_repeat_num+(num-begin_num)*total_repeat_num+repeat_num;
                test_accuracy(1:4, col_num) = exe_test([W_MV W_DS W_LFC W_PC],X_test,G_test);
                
                estimate_accuracy(1, col_num) = sum(G_MV.*G1==1)/instance_num; 
                estimate_accuracy(2, col_num) = sum(G_DS.*G1==1)/instance_num;
                estimate_accuracy(3, col_num) = sum(G_LFC.*G1==1)/instance_num;
                estimate_accuracy(4, col_num) = sum(G_PC.*G1==1)/instance_num;
            end

            dis_information=sprintf('%s%d  %s%d\n','num=',num,'repeat_num=',repeat_num);
            disp(dis_information);
            pause(1)

        end
        
        file_name=sprintf('%s%s',output_file_dir,'accuracy_increase.mat');
        save(file_name,'*_accuracy');        

    end
end
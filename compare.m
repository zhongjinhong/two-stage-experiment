function [  ] = compare( experiment_num )
    Initialization();
    svm_para=sprintf('%s','-s 0 -t 0');
 
    for num=begin_num:end_num
        for repeat_num=1:total_repeat_num
            switch experiment_num
                case {1,2,3,4,5,6,7,8,9,12,14,15,16,21,22,23,24,25,26,27,28,29,30,31,32}
                    file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'X_',num*step_num,'_',repeat_num,'.mat');
                    load(file_name);  
                    file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'Y_',num*step_num,'_',repeat_num,'.mat');
                    load(file_name);  
                    file_name=sprintf('%s%s%d%s%d%s',input_file_dir,'G_',num*step_num,'_',repeat_num,'.mat');
                    load(file_name);        
            end
            
            index = find(sum(Y~=-2,2)>0);
            X = X(index,:);
            Y = Y(index,:);                                    
            G = G(index,:);
            
            n=size(X,1);
            expert_num=size(Y,2);
            
            if experiment_num == 32
                filtered_annotator =[3 7 15 18 47 58 63 66 68 69 75 80 93 111 151 153 158 159 184 193 194 201 204 210 229];
                filter_num = size(filtered_annotator,2);
                for j = 1:filter_num
                    t = filtered_annotator(j);
                    for i = 1:n
                        if Y(i,t) ~= -2
                            if(rand()>0.5)
                                Y(i,t) = 1;
                            else
                                Y(i,t) = -1;
                            end
                        end
                    end
                end  
            end            
            
            
            X=[X ones(n,1)];
            for i = 1:n
                for t = 1:expert_num
                    if (Y(i,t)==-1)
                        Y(i,t) = 0;
                    end
                end
            end
            G_MV = Majority_Method(Y); 
            G_DS = DS_Estimator(Y);
            [W_LFC, G_LFC] = LFC(X,Y);
            [W_PC, G_PC] = PC(X,Y);

            accuracy_mv((num-begin_num)*total_repeat_num+repeat_num,1) = sum(G_MV.*G==1)/n; 
            accuracy_ds((num-begin_num)*total_repeat_num+repeat_num,1) = sum(G_DS.*G==1)/n;
            accuracy_lfc((num-begin_num)*total_repeat_num+repeat_num,1) = sum(G_LFC.*G==1)/n;
            accuracy_pc((num-begin_num)*total_repeat_num+repeat_num,1) = sum(G_PC.*G==1)/n;

            dis_information=sprintf('%s%d  %s%d\n','num=',num,'repeat_num=',repeat_num);
            disp(dis_information);
            pause(1)

        
        end

        
        file_name=sprintf('%s%s',output_file_dir,'accuracy.mat');
        save(file_name,'accuracy_*');        
        
%         count=count;
%         file_name=sprintf('%s%s',output_file_dir,'count.mat');
%         save(file_name,'count','-v7.3');


    end
end
function [  ] = handle_result( experiment_num )

    Initialization();
    
    file_name=sprintf('%s%s',output_file_dir,'accuracy.mat');
    load(file_name);
%     file_name=sprintf('%s%s',output_file_dir,'accuracy_lfc.mat');
%     load(file_name);
%     file_name=sprintf('%s%s',output_file_dir,'accuracy_mv.mat');
%     load(file_name);
%     file_name=sprintf('%s%s',output_file_dir,'accuracy_pc.mat');
%     load(file_name);

    acc_LFC=mean(accuracy_lfc);
    acc_PC=mean(accuracy_pc);
    acc_MV=mean(accuracy_mv);
    acc_DS=mean(accuracy_ds);

    std_LFC=std(accuracy_lfc);
    std_PC=std(accuracy_pc);
    std_MV=std(accuracy_mv);
    std_DS=std(accuracy_ds);
    
    A=[acc_MV;acc_PC;acc_DS;acc_LFC];


    h=zeros(2,1);p=h;
    [h(1),p(1),ci,status]=ttest(accuracy_lfc,accuracy_ds);
    [h(2),p(2),ci,status]=ttest(accuracy_pc,accuracy_mv);
    
end


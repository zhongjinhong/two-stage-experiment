function [] = handle_all_result( )
    test_accuracy = zeros(6,4);
    mean_MV_estimate_accuracy = test_accuracy;
    mean_DS_estimate_accuracy = test_accuracy;
    mean_LFC_estimate_accuracy = test_accuracy;
    mean_PC_estimate_accuracy = test_accuracy;
    std_MV_estimate_accuracy = test_accuracy;
    std_DS_estimate_accuracy = test_accuracy;
    std_LFC_estimate_accuracy = test_accuracy;
    std_PC_estimate_accuracy = test_accuracy;
    
    
    MV_h = test_accuracy;
    DS_h = test_accuracy;
    MV_p = test_accuracy;
    DS_r = test_accuracy;
    for data_num = 1:6
        for experiment_num = 1:3
            [test_accuracy_temp, estimate_accuracy_temp, p_temp, r_temp] = handle_one_result(data_num, experiment_num);
            [MV_p(data_num,experiment_num), MV_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(1,:), test_accuracy_temp(1,:) );
            [DS_p(data_num,experiment_num), DS_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(2,:), test_accuracy_temp(2,:) );
            MV_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(1,:),estimate_accuracy_temp(4,:));
            DS_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(2,:),estimate_accuracy_temp(3,:));
            mean_MV_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(1,:));
            mean_DS_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(2,:));
            mean_LFC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(3,:));
            mean_PC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(4,:));
            
            std_MV_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(1,:));
            std_DS_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(2,:));
            std_LFC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(3,:));
            std_PC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(4,:));            
        end
    end

    data_num = 4;experiment_num=4;
    [test_accuracy_temp, estimate_accuracy_temp, p_temp, r_temp] = handle_one_result(data_num, experiment_num);
    [MV_p(data_num,experiment_num), MV_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(1,:), test_accuracy_temp(1,:) );
    [DS_p(data_num,experiment_num), DS_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(2,:), test_accuracy_temp(2,:) );
    MV_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(1,:),estimate_accuracy_temp(4,:));
    DS_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(2,:),estimate_accuracy_temp(3,:));
    mean_MV_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(1,:));
    mean_DS_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(2,:));
    mean_LFC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(3,:));
    mean_PC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(4,:));

    std_MV_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(1,:));
    std_DS_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(2,:));
    std_LFC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(3,:));
    std_PC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(4,:)); 
    
    data_num = 6;experiment_num=4;
    [test_accuracy_temp, estimate_accuracy_temp, p_temp, r_temp] = handle_one_result(data_num, experiment_num);
    [MV_p(data_num,experiment_num), MV_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(1,:), test_accuracy_temp(1,:) );
    [DS_p(data_num,experiment_num), DS_r(data_num,experiment_num)] = verified( estimate_accuracy_temp(2,:), test_accuracy_temp(2,:) );
    MV_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(1,:),estimate_accuracy_temp(4,:));
    DS_h(data_num,experiment_num) = ttest(estimate_accuracy_temp(2,:),estimate_accuracy_temp(3,:));  
    mean_MV_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(1,:));
    mean_DS_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(2,:));
    mean_LFC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(3,:));
    mean_PC_estimate_accuracy(data_num,experiment_num) = mean(estimate_accuracy_temp(4,:));

    std_MV_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(1,:));
    std_DS_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(2,:));
    std_LFC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(3,:));
    std_PC_estimate_accuracy(data_num,experiment_num) = std(estimate_accuracy_temp(4,:));    
end
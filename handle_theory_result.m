function [] = handle_theory_result(experiment_num)
    switch experiment_num
        case 1
            load '../output data of two stage experiment/Adult/test_accuracy.mat';
            step_num = 100;total_train_num = 10000;
        case 2
            load '../output data of two stage experiment/Conect/test_accuracy.mat';
            step_num = 100;total_train_num = 10000;
        case 3
            load '../output data of two stage experiment/mushroom/test_accuracy.mat';
            step_num = 100;total_train_num = 10000;
        case 4
            load '../output data of two stage experiment/test_data/test_accuracy.mat';
            step_num = 100;total_train_num = 10000;
        case 5
            load '../output data of two stage experiment/Real Data/test_accuracy.mat';
            step_num = 90;total_train_num = 10000;
        case 6
            load '../output data of two stage experiment/Real_Data_AAAI_balance/test_accuracy.mat';
            step_num = 100;total_train_num = 10000;
    end 
    [m,n] = size(test_accuracy);
    x = (1:n);
    figure()
    hold on 
    for i = 1:m
        plot(x,test_accuracy(i,:));
    end
    
end

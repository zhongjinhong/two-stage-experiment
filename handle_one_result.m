function [test_accuracy, estimate_accuracy, p, r] = handle_one_result(data_num, experiment_num)
    test_accuracy = -1;
    estimate_accuracy = -1;
    p = -1;
    r = -1;
    switch data_num
        case 1
            data_string = '../output data of two stage experiment/Adult/';
        case 2
            data_string = '../output data of two stage experiment/Conect/';
        case 3
            data_string = '../output data of two stage experiment/mushroom/';
        case 4
            data_string = '../output data of two stage experiment/Real Data/';
        case 5
            data_string = '../output data of two stage experiment/test_data/';
        case 6
            data_string = '../output data of two stage experiment/Real_Data_AAAI_balance/';   
    end
    switch experiment_num
        case 1
            file_dir = sprintf('%s%s',data_string,'Clustering/');
        case 2
            file_dir = sprintf('%s%s',data_string,'latent model/');
        case 3
            file_dir = sprintf('%s%s',data_string,'expertise_difficult_model/');
        case 4
            file_dir = sprintf('%s%s',data_string,'Real Label/');
    end   
    file_name = sprintf('%s%s',file_dir,'accuracy.mat');
    load(file_name);
%     file_name = sprintf('%s%s',file_dir,'result.mat');
%     load(file_name);
end
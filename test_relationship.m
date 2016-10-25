function [  ] = test_relationship( experiment_num )
    addpath('../tools');
    svm_para=sprintf('%s','-s 0 -t 0');
    switch experiment_num
        case 1
            load '../input data of two stage experiment/Adult/Adult.mat';
            output_file_dir='../output data of two stage experiment/Adult/';
            total_repeat_num=100;
        case 2
            load '../input data of two stage experiment/Conect/conect-4.mat';
            output_file_dir='../output data of two stage experiment/Conect/';
            total_repeat_num=100;
        case 3
            load '../input data of two stage experiment/mushroom/mushroom.mat';
            output_file_dir='../output data of two stage experiment/mushroom/';
            total_repeat_num=100;
        case 4
            load '../input data of two stage experiment/test_data/dna.mat';
            output_file_dir='../output data of two stage experiment/test_data/';
            total_repeat_num=100;
        case 5
            load '../input data of two stage experiment/Real Data/realdata2.mat';
            output_file_dir='../output data of two stage experiment/Real Data/';
            total_repeat_num=100;
        case 6
            load '../input data of two stage experiment/Real_Data_AAAI_balance/real_data_aaai_balance.mat';
            output_file_dir='../output data of two stage experiment/Real_Data_AAAI_balance/';
            total_repeat_num=100;
    end

    estimate_accuracy = zeros(total_repeat_num,1);
    test_accuracy = estimate_accuracy;
    n = size(data,1);
    train_num = floor(0.9*n);
    test_num = n - train_num;
    data = [data ones(n,1)];
    for num=1:total_repeat_num                   
        index = randperm(n);
        data = data(index,:);
        label = label(index,:);
        X = data(1:train_num,:);
        Z = label(1:train_num,:);
        X_test = data(train_num+1:end,:);
        label_test = label(train_num+1:end,:);

        wrong_ratio = 0.5 - 0.5*rand();
        wrong_num = floor(train_num*wrong_ratio);
        estimate_accuracy(num,1) = 1 - wrong_num/train_num;
        
        Z(1:wrong_num,:) = -Z(1:wrong_num,:);
        X_sparse = sparse(X);
        model = train(Z,X_sparse);
        w0= model.w;
        if(model.Label(1,1)~=1)
            w0=-w0;
        end     
        
        test_value = X_test*w0';
        test_accuracy(num,1) = sum( test_value.*label_test > 0 )/test_num;

        dis_information=sprintf('%s%d\n','repeat_num=',num);
        disp(dis_information);
        pause(1)    

    end
    [p, r] = verified( estimate_accuracy, test_accuracy );
    file_name=sprintf('%s%s',output_file_dir,'test_relationship_result.mat');
    save(file_name,'p','r'); 
end

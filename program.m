% addpath('../Program_test_crossvalidation');
clear;
addpath('../tools');
n = 100;
delta = 0.5;
expert_num = 7;
X = normrnd(1, delta, [n/2, 2]);
X(n/2+1:n,:) = -normrnd(1, delta, [n/2, 2]);
G(1:n/2,1) = 1;
G(n/2+1:n,1) = -G(1:n/2,1);
% Y = produce_label_instance(G,X,expert_num);
Y = produce_label_annotator(G,X,expert_num);

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


accuracy_mv = sum(G_MV.*G==1)/n; 
accuracy_ds = sum(G_DS.*G==1)/n;
accuracy_lfc = sum(G_LFC.*G==1)/n;
accuracy_pc = sum(G_PC.*G==1)/n;



% G_MV( (num-begin_num)*total_repeat_num+repeat_num,: )=Majority_Method(Y);            
% G_DS( (num-begin_num)*total_repeat_num+repeat_num,: )=DS_Estimator(X,Y,svm_para);
% G_LFC( (num-begin_num)*total_repeat_num+repeat_num,: )=LFC(X,Y);
% G_PC( (num-begin_num)*total_repeat_num+repeat_num,: )=PC(X,Y);

% compare(1)
% savepath



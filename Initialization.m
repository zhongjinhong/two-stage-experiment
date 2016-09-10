switch experiment_num
    case 1
        input_file_dir='../input data of two stage experiment/Adult/Clustering/';
        output_file_dir='../output data of two stage experiment/Adult/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name='Adult(Yan Yan''s Data)'; 
    case 2
        input_file_dir='../input data of two stage experiment/Adult/latent model/';
        output_file_dir='../output data of two stage experiment/Adult/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);  
        title_name='Adult(Raykar''s Data)'; 
    case 3
        input_file_dir='../input data of two stage experiment/Adult/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Adult/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);  
        title_name='Adult(Whitehill''s Data)'; 
        
    case 4
        input_file_dir='../input data of two stage experiment/Conect/Clustering/';    
        output_file_dir='../output data of two stage experiment/Conect/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name=('Conect(Yan Yan''s Data)'); 
    case 5
        input_file_dir='../input data of two stage experiment/Conect/latent model/';
        output_file_dir='../output data of two stage experiment/Conect/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name='Conect(Raykar''s Data)';
    case 6
        input_file_dir='../input data of two stage experiment/Conect/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Conect/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name='Conect(Whitehill''s Data)'; 
                
        
        
    case 7
        input_file_dir='../input data of two stage experiment/mushroom/Clustering/';
        output_file_dir='../output data of two stage experiment/mushroom/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name='mushroom(Yan Yan''s Data)';
    case 8
        input_file_dir='../input data of two stage experiment/mushroom/latent model/';
        output_file_dir='../output data of two stage experiment/mushroom/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);
        title_name='mushroom(Raykar''s Data)';        
    case 9
        input_file_dir='../input data of two stage experiment/mushroom/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/mushroom/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);
        title_name='mushroom(Whitehill''s Data)';

        
        
    case 14
        input_file_dir='../input data of two stage experiment/test_data/Clustering/';
        output_file_dir='../output data of two stage experiment/test_data/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num); 
        title_name='test_data(Yan Yan''s Data)'; 
    case 15
        input_file_dir='../input data of two stage experiment/test_data/latent model/';
        output_file_dir='../output data of two stage experiment/test_data/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);  
        title_name='test_data(Raykar''s Data)'; 
    case 16
        input_file_dir='../input data of two stage experiment/test_data/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/test_data/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,(end_num-begin_num+1)*total_repeat_num);  
        title_name='test_data(Whitehill''s Data)';         
        
 
        
    case 21 %%total_repeat_num=10 needs about 12h
        input_file_dir='../input data of two stage experiment/Real Data/Clustering/';
        output_file_dir='../output data of two stage experiment/Real Data/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='Twitter Topic(Yan Yan''s Data)';
    case 22
        input_file_dir='../input data of two stage experiment/Real Data/latent model/';
        output_file_dir='../output data of two stage experiment/Real Data/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='Twitter Topic(Raykar''s Data)';
    case 23
        input_file_dir='../input data of two stage experiment/Real Data/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Real Data/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='Twitter Topic(Whitehill''s Data)';
    case 24
        input_file_dir='../input data of two stage experiment/Real Data/Real Label/';
        output_file_dir='../output data of two stage experiment/Real Data/Real Label/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='Twitter Topic(Real Data)';
        

    case 29
        input_file_dir='../input data of two stage experiment/Real_Data_AAAI_balance/Clustering/';
        output_file_dir='../output data of two stage experiment/Real_Data_AAAI_balance/Clustering/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='NER(Clustering)';       
    case 30
        input_file_dir='../input data of two stage experiment/Real_Data_AAAI_balance/latent model/';
        output_file_dir='../output data of two stage experiment/Real_Data_AAAI_balance/latent model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='NER(Raykar''s Data)';                  
    case 31
        input_file_dir='../input data of two stage experiment/Real_Data_AAAI_balance/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Real_Data_AAAI_balance/expertise_difficult_model/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='NER(Whitehill''s Data)';       
    case 32
        input_file_dir='../input data of two stage experiment/Real_Data_AAAI_balance/Real Label/';
        output_file_dir='../output data of two stage experiment/Real_Data_AAAI_balance/Real Label/';
        total_repeat_num=10;begin_num=1;end_num=10;step_num = 100;count=zeros(2*end_num*step_num,total_repeat_num);
        title_name='NER(Real Data)';           
        
        
    case 41
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Clustering/';
        output_file_dir='../output data of two stage experiment/Real Data Replicate/Clustering/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Computing time(Yan Yan''s Data)';        
    case 42
        input_file_dir ='../input data of two stage experiment/Real Data Standar/latent model/';
        output_file_dir='../output data of two stage experiment/Real Data Replicate/latent model/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Computing time(Raykar''s Data)'; 
    case 43
        input_file_dir ='../input data of two stage experiment/Real Data Standar/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Real Data Replicate/expertise_difficult_model/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Computing time(Whitehill''s Data)'; 
    case 44
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Real Label/';
        output_file_dir='../output data of two stage experiment/Real Data Replicate/Real Label/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Computing time(Real Data)';    
        
    
    case 45
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Clustering/';
        output_file_dir='../output data of two stage experiment/Real Data Random1/Clustering/';
        total_repeat_num=100;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Clustering data)';        
    case 46
        input_file_dir ='../input data of two stage experiment/Real Data Standar/latent model/';
        output_file_dir='../output data of two stage experiment/Real Data Random1/latent model/';
        total_repeat_num=100;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Raykar''s Data)'; 
    case 47
        input_file_dir ='../input data of two stage experiment/Real Data Standar/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Real Data Random1/expertise_difficult_model/';
        total_repeat_num=100;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Whitehill''s Data)'; 
    case 48
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Real Label/';
        output_file_dir='../output data of two stage experiment/Real Data Random1/Real Label/';
        total_repeat_num=100;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Real Label)';  


        
    case 49
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Clustering/';
        output_file_dir='../output data of two stage experiment/Real Data Random2/Clustering/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Yan Yan''s Data)';        
    case 50
        input_file_dir ='../input data of two stage experiment/Real Data Standar/latent model/';
        output_file_dir='../output data of two stage experiment/Real Data Random2/latent model/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Raykar''s Data)'; 
    case 51
        input_file_dir ='../input data of two stage experiment/Real Data Standar/expertise_difficult_model/';
        output_file_dir='../output data of two stage experiment/Real Data Random2/expertise_difficult_model/';
        total_repeat_num=30;begin_num=1;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Whitehill''s Data)'; 
    case 52
        input_file_dir ='../input data of two stage experiment/Real Data Standar/Real Label/';
        output_file_dir='../output data of two stage experiment/Real Data Random2/Real Label/';
        total_repeat_num=30;begin_num=11;end_num=11;step_num = 100;count=zeros(2*1000,(end_num-begin_num+1)*total_repeat_num);
        title_name='Twitter Topic(Real Data)';          
   
        
end
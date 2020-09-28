function [x_train, x_test] = load_digits(total_number)
    
    %LOAD_DIGITS generate 6x5 matrices digits dataset. 
    % start from 0,1,2 ... 9 depends of total number
    % -1 means white, 1 means black on pixels.
    % params : 
    %   - total : number of digits that generate
    % return :
    %   - x_train : for normal data.
    %   - x_test : for 50% corrupt data.
   
    % X TRAIN
    digit_0 = [
            -1 1 1 1 -1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            -1 1 1 1 -1
            ]; 

    digit_1 = [
            -1 1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            ]; 

    digit_2 = [
            1 1 1 -1 -1;
            -1 -1 -1 1 -1;
            -1 -1 -1 1 -1;
            -1 1 1 -1 -1;
            -1 1 -1 -1 -1;
            -1 1 1 1 1;
            ];
    
    digit_3 = [
            1 1 1 1 1;
            -1 -1 -1 -1 1;
            1 1 1 1 1;
            1 1 1 1 1;
            -1 1 -1 -1 1;
            1 1 1 1 1;
            ];
        
    digit_4 = [
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            1 1 1 1 1 ;
            -1 -1 -1 -1 1 ;
            -1 -1 -1 -1 1 ;
            -1 -1 -1 -1 1
            ];  
        
    digit_5 = [
            1 1 1 1 1 ;
            1 -1 -1 -1 -1 ;
            1 1 1 1 1 ;
            -1 -1 -1 -1 1 ;
            -1 -1 -1 -1 1 ;
            1 1 1 1 1
            ]; 
        
    digit_6 = [
            1 1 1 1 1 ;
            1 -1 -1 -1 -1 ;
            1 1 1 1 1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            1 1 1 1 1
            ]; 
        
    digit_7 = [
            1 1 1 1 1;
            -1 -1 -1 1 -1;
            -1 -1 1 -1 -1;
            -1 1 -1 -1 -1;
             1 -1 -1 -1 -1;
             1 -1 -1 -1 -1;
            ];
        
    digit_8 = [
            -1 1 1 1 -1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            -1 1 1 1 -1 ;
            1 -1 -1 -1 1 ;
            -1 1 1 1 -1
            ]; 
        
    digit_9 = [
            -1 1 1 1 -1 ;
            1 -1 -1 -1 1 ;
            1 -1 -1 -1 1 ;
            -1 1 1 1 1 ;
            -1 -1 -1 -1 1 ;
            1 1 1 1 1
            ]; 
        

    % flatten digits
    digit_0_flat = reshape(digit_0' , 1 , []);
    digit_1_flat = reshape(digit_1' , 1 , []);
    digit_2_flat = reshape(digit_2' , 1 , []);
    
    digit_3_flat = reshape(digit_3' , 1 , []);
    digit_4_flat = reshape(digit_4' , 1 , []);
    digit_5_flat = reshape(digit_5' , 1 , []);
    
    digit_6_flat = reshape(digit_6' , 1 , []);
    digit_7_flat = reshape(digit_7' , 1 , []);
    digit_8_flat = reshape(digit_8' , 1 , []);
    digit_9_flat = reshape(digit_9' , 1 , []);


    % join 
    all_digit = [ 
        digit_0_flat;
        digit_1_flat; 
        digit_2_flat;
        digit_3_flat;
        digit_4_flat;
        digit_5_flat;
        digit_6_flat;
        digit_7_flat;
        digit_8_flat;
        digit_9_flat;
        ];
    
    % filter the number
    x_train = all_digit(1:total_number, :);
    
    % X TEST
    digit_0_test = [
        -1 1 1 1 -1 ;
        1 -1 -1 -1 1 ;
        1 -1 -1 -1 1 ;
        1 -1 1 -1 1 ;
        -1 -1 -1 -1 -1 ;
        -1 -1 -1 -1 -1
        ]; 

    digit_1_test = [
            -1 1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 1 -1 -1;
            -1 -1 -1 -1 -1;
            -1 -1 -1 -1 -1;
            ]; 

    digit_2_test = [
            1 1 1 -1 -1;
            -1 -1 -1 1 -1;
            -1 -1 -1 1 -1;
            -1 1 1 -1 -1;
            -1 1 -1 -1 -1;
            -1 -1 -1 -1 -1;
            ];

    % flatten digits
    digit_0_flat_test = reshape(digit_0_test' , 1 , []);
    digit_1_flat_test = reshape(digit_1_test' , 1 , []);
    digit_2_flat_test = reshape(digit_2_test' , 1 , []);

    % join 
    x_test = [ 
        digit_0_flat_test;
        digit_1_flat_test; 
        digit_2_flat_test;
        ];
   
    

end


function [] = myInsertionSort(array)    
for index1 = 2:length(array) 
    %did 'to' instead of :       
    key = array(index1);      
    index2 = index1 - 1;      
    while index2 >= 1 && key < array(index2)
        %capitalized key    
        array(index2+1) = array(index2);
        %mispelled array         
        index2 = index2 - 1;     
        %removed an end (maybe)   
        array(index2 + 1) = key;  
    end
end
    disp(array)
end
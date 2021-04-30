function [outputArray] = quickSort(array)
   if length(array) == 1
       fprintf('Base case, array = %d\n\n',array);
       outputArray = array;
       
       return
   end
   if length(array) < 1
       outputArray = array;
       return
   end
   
   
    pivot = array(randi([1 length(array)]));
    
    listOne = array(array < pivot);
    
    listTwo = array(array == pivot);
    
    listThree = array(array > pivot);
    
       lessThan = quickSort(listOne);
       greaterThan = quickSort(listThree);
       
       outputArray = [lessThan,listTwo,greaterThan];
   disp(array)
end

% Trevor Thomazin helped me write this







function [] = lab06()   
myInsertionSort([8 6 7 5 3 0 9]);    
fprintf("Expected: [0 3 5 6 7 8 9]\n");   
fprintf('------------------------------\n');%    
myFactorial(5);%     
fprintf('Expected value: 5! = 120\n');
%    fprintf('------------------------------\n');
%     mySum(10);%     fprintf('Expected: The sum of 0:10 = 55\n');
%     fprintf('------------------------------\n');
%     myDoubleFactorial(9);
%     fprintf('Expected: 9!! = 945\n');
%     fprintf('------------------------------\n');
end
%Determine the problems with this code by running it and Googling the error
%messages as needed, speak to an LA if you have difficulties
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
    disp(array)%need to add this so that the new sorted array is displayed
end
%For the following three functions, use breakpoints to stop the program and
%step through it one line at a time to determine the errors.
%Unlike the previous function, the code runs as is, but the results are
%incorrect
    function [] = myFactorial(n)
        i = 1;
        result = n;% need to set to n so that the first number is added into the multiplication
        while i < n %took out = so it doesn't run forever.    
            result = result * i;
            i = i + 1; % need to add this line so that i changes.
        end
        fprintf('%d! = %d\n',n,result)% take off ; so line gets displayed
    end
    function [] = mySum(n)  
        i = 0; 
        sum = n;%change from zero to n so that the value changes
        while i < n  
            sum = sum + i;  
            i = i + 1; 
        end
        fprintf('The sum of 0:%d = %d\n',n,sum);
    end
%A double factorial is similar to a factorial, except that instead of%multipling 1:n, it multiplies 1:2:n, skipping even numbers
    function [] = myDoubleFactorial(n) 
        result = 1;%was 0, if it stays 0 then everything will be zeros 
        i = n;  
        while i > 0      
            result = result * i;%this needs to be i because i is changing
            i = i - 2;  %needs to be the 2 so that it goes every two numbers,
            %and needs to be inside while function
        end
 
        fprintf('%d!! = %d\n',n,result);% needs to be n cause that is the input
    end

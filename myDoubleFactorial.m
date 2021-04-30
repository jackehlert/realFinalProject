    function [] = myDoubleFactorial(n) 
        result = 1;%was 0, if it stays 0 then everything will be zeros 
        i = n;  
        while i > 0      
            result = result * i;%this needs to be i because i is changing
            i = i - 2;  %needs to be the 2 so that it goes every two numbers
        end
  
        fprintf('%d!! = %d\n',n,result);% needs to be n cause that is the input
    end
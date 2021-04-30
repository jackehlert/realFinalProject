    function [] = myFactorial(n)
        i = 1;
        result = n;
        while i < n   %took out equal sign so it doesn't run to infinity  
            result = result * i;
            i = i + 1; 
        end
          
            
        fprintf('%d! = %d\n',n,result);
    end
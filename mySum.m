    function [] = mySum(n)  
        i = 0; 
        sum = n;
        while i < n  
            sum = sum + i;  
            i = i + 1; 
        end
        fprintf('The sum of 0:%d = %d\n',n,sum);
    end
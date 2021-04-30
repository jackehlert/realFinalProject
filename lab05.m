function [] = lab05(fileName)
    data = readmatrix(fileName);
        row1 = data(1, :);
        row2 = data(2, :);
        row3 = data(3, :);
        
        srow1 = bubbleSort(row1);
        srow2 = bubbleSort(row2);
        srow3 = bubbleSort(row3);
        
        x = 1:length(row1);
        
        subplot(3,1,1)
            plot(x, row1, 'r', x, srow1, 'g');
            xlabel('Hour of the Day')
            ylabel('Temperature')
            
        subplot(3,1,2)
            plot(x, row2, 'r', x, srow2, 'g');
            xlabel('Hour of the day')
            ylabel('Temperature')
            
        subplot(3,1,3)
            plot(x, row3, 'r', x, srow3, 'g');
            xlabel('Hour of the Day')
            ylabel('Temperature')
            

end
function [array] = bubbleSort(array)
    for indexOuter = (length(array)-1):-1:1
        for indexInner = 1:indexOuter
            if array(indexInner) > array(indexInner+1)
               array = swap(array, indexInner); 
            end
            
        end
    end
    
end
function [array] = swap(array, index)
    tempVar = array(index);
    array(index) = array(index + 1);
    array(index + 1) = tempVar;
    
end
function [] = lab04(filename)
    data = readmatrix(filename);
    days = data(:,1); 
    precipitation = data(:,2);
    
    days = mod(days,100);
    
    combinedDays = 1:30;
    combinedPrecipitation = zeros(30,1);
    
    for i = 1:30
        for j = 1:length(days)
            if (i == days(j))
                combinedPrecipitation(i) = combinedPrecipitation(i) + precipitation(j);
                
                
            end
            

        end
    end
    plot(combinedDays, combinedPrecipitation, 'bx');
    title('Precipitation in June')
    xlabel('Day of the Month')
    ylabel('Amount of Precipitation')
    
    writematrix([combinedDays.', combinedPrecipitation], 'newdata.csv');
end

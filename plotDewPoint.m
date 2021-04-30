function [] = plotDewPoint(temps1, dews1, temps2, dews2, temps3, dews3)
    subplot(3,1,1);
    rh1 = calculateRelativeHumidity(temps1,dews1);
    multiplePlotCalls(temps1, dews1, rh1);
    
    legend('Temperature', 'Dew Points', 'Relative Humidity');
     
     subplot(3,1,2);
     rh2 = calculateRelativeHumidity(temps2,dews2);
     singlePlotCall(temps2,dews2,rh2);
     
     legend('Temperature', 'Dew Points', 'Relative Humidity');
     subplot(3,1,3);
     rh3 = calculateRelativeHumidity(temps3,dews3);
     plotForLoop(temps3,dews3,rh3);
     
     legend('Temperature', 'Dew Points', 'Relative Humidity');
end
function rh = calculateRelativeHumidity(temp,dew)
    rh = 100 - 5 * (temp - dew);
end
function [] = plotForLoop(temp,dew,rh)
hold on;
    for i = 1:length(temp)
        plot(i,temp(i),'ro');
        plot(i,dew(i),'b*');
        plot(i, rh(i), 'kx');
    end
    xlabel('Time of Day');
    ylabel('Temps and Humidity');
end
function [] = singlePlotCall(temp,dew, rh)
    x = 1:length(temp);
    plot(x, temp, 'ro', x, dew, 'b*', x, rh, 'kx');
    xlabel('Time of Day');
    ylabel('Temps and Humidity');
end
function [] = multiplePlotCalls(temp,dew,rh)
hold on;
    x = 1:length(temp);
    plot(x, temp, 'ro');
    plot(x, dew, 'b*')
    plot(x, rh, 'kx');
    hold off;
    xlabel('Hour of the Day');
    ylabel('Humidity and temps');
    
end

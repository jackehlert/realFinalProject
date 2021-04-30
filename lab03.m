function [] = lab03 ( temperature, windSpeed, windDirection)
    blue = [0 0 1];
    green = [0 1 0];
    cyan = [0 1 1];
    magenta = [1 0 1];
    red = [1 0 0];
heatMap = [blue; green; cyan; magenta; red];


hold on 
        windDirectionsAdjusted = 90 - windDirection;
    windDirectionX = cosd(windDirectionsAdjusted);
    windDirectionY = sind(windDirectionsAdjusted);
    timeOfDay = 1:24;
    for hour = 1:24
         q = quiver(timeOfDay(hour), temperature(hour), windDirectionX(hour), windDirectionY(hour));
            q.MaxHeadSize = 1;
   
        if (windSpeed(hour) >= 0 && windSpeed(hour) <=3)
            q.Color = heatMap(1,:);
        elseif (windSpeed(hour) >= 4 && windSpeed(hour) <=7)
            q.Color = heatMap(2,:);
        elseif (windSpeed(hour) >= 8 && windSpeed(hour) <=11)
            q.Color = heatMap(3,:);
        elseif (windSpeed(hour) >= 12 && windSpeed(hour) <=15)
            q.Color = heatMap(4,:);
        elseif (windSpeed(hour) >= 16 && windSpeed(hour) <=20)
            q.Color = heatMap(5,:);
        end
    end
    xlim([0,25]);
    ylim([55,90]);
    xlabel('Hour of the Day');
    ylabel('Degrees Fahrenheit');
    title('Wind Speed and Temperautre in Lincoln, NE, on June 23, 2020');
    c = colormap(heatMap);
    plotColorBar = colorbar;
    caxis([0 20]);
    ylabel(plotColorBar, 'Wind Speed (mph)');

    
    
    
end


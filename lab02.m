function [] = lab02(lincoln, omaha, day)
    hour = linspace (1, 24, 24);
    
    figure 
    subplot(2,1,1);
    
    plot(hour, lincoln, 'x', hour, omaha, 'o') 
    
    title(['Temperature on ', day, ' (one plot cell)']);
    xlabel('Hour of the day')
    ylabel('Degrees Fahrennheit')
    
    subplot(2,1,2);
    hold on;
    
    plot(hour, lincoln, 'x');
    plot(hour, omaha, 'o');
    
    title(['Temperature on ', day, ' (one plot cell)']);
    xlabel('Hour of the day')
    ylabel('Degrees Fahrennheit')
    
end

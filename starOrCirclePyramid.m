function [] = starOrCirclePyramid(symbol, number)
    if symbol == 'o'
        disp("The variable 'symbol' contains a cirlce.")
    elseif symbol == '*'
        disp("The variable 'symbol' contains a star.")
    else
        disp("Error! Please give me an 'o' or an '*'.")
        return
    end
    for height = 1:number
        for width = 1:height
            fprintf(symbol)
        end
        fprintf("\n")
    end
end
function [] = RPSLS()
end
function playerOneChoice = getPlayerOneChoice()
choiceNum = input('Input a number 1-5 to make a selection, 6 to quit.');
switch choiceNum
    case 1
    playerOneChoice = 'Rock';
    case 2
    playerOneChoice = 'Paper';
    case 3
    playerOneChoice = 'Scissors';
    case 4
    playerOneChoice = 'Lizard';
    case 5
    playerOneChoice = 'Spock';
    case 6
    playerOneChoice = 'Quit';
end
end
function 
end


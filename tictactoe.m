function [] = tictactoe()
    clc;
    board = char(zeros(3,3));

    % Flag to indicate if game is over, either tie or win
    isDone = false;

    % Flag to indicate if a player has won the game
    isWon = false;

    % Current player executing their turn
    player = 'X';

    disp('Select your desired location by using the x,y coordinate system.\nFor example, to put a mark in the first box in the first row and column, type "1,1"');
    while ~isDone
        fprintf('Board:\n');
        displayBoard(board);

        % Take in input
        coordinates = input(['Where to place player ' player '?  '], 's'); %Example inputs: 1,1 or 3,2 ; number comma number no spaces

        if length(coordinates) ~= 3 || coordinates(1) > '3' || coordinates(1) < '1' || coordinates(3) > '3' || coordinates(3) < '1'
            clc;
            fprintf('Error: Invalid input\n');
            continue;
        end

        x = str2double(coordinates(1));
        y = str2double(coordinates(3));

        if (board(x,y) == (char(0))) %Valid, unused spot
            board(x,y) = player;
        else
            clc;
            fprintf('Error: Desired location has already been used.\n');
            continue;
        end

        % Checks if the current player has won the game.
        % Makes multiple checks for rows, columns, and diagonals.
        [isWon,isDone] = checkBoard(board);

        if isDone == false % If not done playing the game
            if player == 'X'
                player = 'O';
            else
                player = 'X';
            end
        end
    end

    clc;
    displayBoard(board);
    if isWon == true
        winningChar = player;
        fprintf('Congratulations, %s won!\n',winningChar);
    else
        fprintf('A tie, good game!\n');
    end
end

function [] = displayBoard(board)
    fprintf('   1 2 3 \n');
    fprintf('  +-+-+-+\n');
    for i = 1:3
        newRow = true;
        for j = 1:3
            if newRow
                fprintf('%s ',char('1' + i - 1));
                newRow = false;
            end
            fprintf('|%c',board(i,j));
        end
        fprintf('|\n');
        fprintf('  +-+-+-+\n');
    end
end

function [isWon,isDone] = checkBoard(board)
    %Using isWon to check each row, each column, and the diagonals for
    %three of the same non-blank character
    isWon = checkWin(board(1,:)) || checkWin(board(2,:)) || checkWin(board(3,:)) || checkWin(board(:,1)) || checkWin(board(:,2)) || checkWin(board(:,3)) || checkWin([board(1,1) board(2,2) board(3,3)]) || checkWin([board(3,1) board(2,2) board(1,3)]);
    
    % If the game has been won, or all nine spots on the board have been
    % used, the game is over
    
    % board(:) converts the board into a one dimensional array because
    % otherwise the sum function will return a 1x3 column array
    spotsUsed = sum(board(:) ~= 0);
    if isWon == true || spotsUsed == 9
        isDone = true;
    else
        isDone = false;
    end
end

function isDone = checkWin(board)
    % Given three arbitrary locations on the board, see if all three are
    % the same character, and that said character is not equal to zero
    isDone = board(1) == board(2) && board(2) == board(3) && board(1) ~= char(0);
end



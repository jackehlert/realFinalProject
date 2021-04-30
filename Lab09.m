function [n] = Lab09(line)
str = line;
exp = '[N][e][m][o][^a-z]';
result = regexp(str, exp);

if result > 0
    newStr = extractBefore(str,result(1,1));

    expr = ' ';
    spaces = regexp(newStr, expr);
    
    n = length(spaces) + 1;
    fprintf('I found Nemo at word %d!\n',n);
else
    n = -1;
    fprintf('I couldn''t find Nemo,sorry.\n'); 
end
end
function [] = findingNemo()
    fileID = fopen('nemo.txt','r');
    while true
        line = fgets(fileID);
        if line == -1
            break;
        end
        n = Lab09(line);
        fprintf('n = %d\n',n);
    end
end
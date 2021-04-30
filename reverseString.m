function [gnirtsEsrever] = reverseString(string)
   
    parts = regexprep(string, '([A-Z])', ' ${lower($1)}');
    %splits the string into the different words
    newString = strsplit(parts);
    %seperates the words into cell arrays
    reversed = reverse(newString);
    %reverses the order of the words inside the cells
    flip = fliplr(reversed);
    %flips the order of the cells
    makeCapital = regexprep(flip, '(\<[a-z])','${upper($0)}');
    %makes the first letter of every cell a capital letter
    makeCapital{1}(1) = lower(makeCapital{1}(1));
    %changes the first capital letter back to a lower case
    gnirtsEsrever = [makeCapital{1:length(makeCapital)}];
    %combines the cells into one string
    
end


%Taryn Jordan helped me with this
function [array] = doubleMyArray(array)
   for index = 1:length(array)
       array(index) = array(index) * 2;
   end
end

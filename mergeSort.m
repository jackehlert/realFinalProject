function arr = mergeSort(arr)
    %A wrapper function, doesn't do anything
    %and isn't necessary for HW2, but 
    %uses tic and toc to see how long it took to run
    tic;
    n = length(arr);
    arr = mergeSortRecursive(arr,1,n);
    toc;
end

function arr = mergeSortRecursive(arr,start,finish)
    %The pivot in mergeSort is the middle element of the array,
    %in quickSort, it's a random element of the array
    pivot = floor((start + finish) / 2);
    
    %The base case is that the list has two or fewer elements,
    %if so, make sure they're sorted correctly and move on
    if finish == start || start + 1 == finish
       if arr(finish) < arr(start)
          placeHolder = arr(start);
          arr(start) = arr(finish);
          arr(finish) = placeHolder;
       end
    else 
       %If we're not in the base case, we must be in the general,
       %so sort the left half of the array recursively,
       %then the right half
       arr = mergeSortRecursive(arr,start,pivot);
       arr = mergeSortRecursive(arr,pivot + 1, finish);
    end
    %Once the recursive calls are done, and the two halves
    %of the list are sorted, merge them together into a
    %single sorted list
    arr = merge(arr,start,pivot,finish);
end

function arr = merge(arr, start,pivot,finish)
    firstList = arr(start:pivot);
    secondList = arr(pivot+1:finish);
    j = 1;
    k = 1;
    for i = start:finish
        %If we still have elements in the first list,
        %and the first list has a smaller element, or if
        %the second list is out of elements, then pull from the
        %first list
        if j <= length(firstList) && (k > length(secondList) || firstList(j) < secondList(k))
            arr(i) = firstList(j);
            j = j + 1;
        %Implicitly, if we're not pulling from the first list,
        %we need to pull from the second list
        else
            arr(i) = secondList(k);
            k = k + 1;
        end
    end
end
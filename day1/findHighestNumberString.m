function [number] = findHighestNumberString(string)
    reverseString = reverse(string);
    placement = 'a';
    number = [];
    
    onePosition = strfind(reverseString, 'eno');
    twoPosition = strfind(reverseString, 'owt');
    threePosition = strfind(reverseString, 'eerht');
    fourPosition = strfind(reverseString, 'ruof');
    fivePosition = strfind(reverseString, 'evif');
    sixPosition = strfind(reverseString, 'xis');
    sevenPosition = strfind(reverseString, 'neves');
    eightPosition = strfind(reverseString, 'thgie');
    ninePosition = strfind(reverseString, 'enin');
    array = {onePosition twoPosition threePosition fourPosition fivePosition sixPosition sevenPosition eightPosition ninePosition};
    
    for k=1:length(array)
        value = array(k);
        position = value{1};
        
        if ~isnan(position)
            position = position(1);
            if isnan(placement)
                placement = position;
            else
                if position < placement
                    placement = position;
                    number = k;
                end
            end
        end
    end

    [firstNumber, firstNumberPosition] = getFirstNumber(reverseString);
    
    if firstNumberPosition < placement
        number = firstNumber;
    end
end

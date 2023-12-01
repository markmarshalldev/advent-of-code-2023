function [number] = findLowestNumberString(string)
    placement = 'a';
    number = [];
    
    onePosition = strfind(string, 'one');
    twoPosition = strfind(string, 'two');
    threePosition = strfind(string, 'three');
    fourPosition = strfind(string, 'four');
    fivePosition = strfind(string, 'five');
    sixPosition = strfind(string, 'six');
    sevenPosition = strfind(string, 'seven');
    eightPosition = strfind(string, 'eight');
    ninePosition = strfind(string, 'nine');
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

    for i =1:length(string)
    letter = string(i);
    converted = str2double(letter);
    real = isreal(converted);
    if ~isnan(converted) && real == 1
        firstNumber = converted;
        firstNumberPosition = i;
       break
    end

    firstNumber = [];
    end
    
    if firstNumberPosition < placement
        number = firstNumber;
    end
end

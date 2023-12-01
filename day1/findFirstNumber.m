function [firstNumber, firstNumberPosition] = findFirstNumber(text)
    for i =1:length(text)
        letter = text(i);
        converted = str2double(letter);
        real = isreal(converted);
        if ~isnan(converted) && real == 1
            firstNumber = converted;
            firstNumberPosition = i;
            break
        end

        firstNumber = [];
        firstNumberPosition = [];
    end
endfunction [firstNumber, firstNumberPosition] = getFirstNumber(text)
    for i =1:length(text)
        letter = text(i);
        converted = str2double(letter);
        real = isreal(converted);
        if ~isnan(converted) && real == 1
            firstNumber = converted;
            firstNumberPosition = i;
            break
        end

        firstNumber = [];
        firstNumberPosition = [];
    end
end

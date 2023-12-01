function [firstNumber] = getFirstNumber(text)
for i =1:length(text)
    letter = text(i);
    converted = str2double(letter);
    real = isreal(converted);
    if ~isnan(converted) && real == 1
        firstNumber = converted;
       break
    end

    firstNumber = [];
end
end

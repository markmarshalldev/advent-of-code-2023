day1Input

total = 0;
for k=1:length(x)
    text = x{k};
    firstNumber = getFirstNumber(text);
    lastNumber = getLastNumber(text);
    rowTotal = (firstNumber * 10) + lastNumber;
    total = total + rowTotal;
end

disp(total)

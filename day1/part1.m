day1Input

total = 0;
for k=1:length(x)
    text = x{k};
    reverseString = reverse(text);
    firstNumber = getFirstNumber(text);
    lastNumber = getFirstNumber(reverseString);
    rowTotal = (firstNumber * 10) + lastNumber;
    total = total + rowTotal;
end

disp(total)

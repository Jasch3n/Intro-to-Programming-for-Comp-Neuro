[s, p] = sumAndProduct([1 2 3 4])

function ave = average(x)
    ave = sum(x(:))/numel(x); 
end

function [mySum, myProduct] = sumAndProduct(x)
    mySum = sum(x);
    myProduct = prod(x);
end

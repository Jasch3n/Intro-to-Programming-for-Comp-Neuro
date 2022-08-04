isCollatzTrue(10)

% assume that input is positive integer (n > 0)
function isTrue = isCollatzTrue(n)
    if n==1
        isTrue = true;
        return;
    end
    
    % test if n is even or not
    if mod(n,2)==0
        isTrue = isCollatzTrue(n/2);
    else
        isTrue = isCollatzTrue(3*n + 1);
    end
end
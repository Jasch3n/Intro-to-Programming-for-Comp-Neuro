[fib(1), fib(2), fib(3), fib(4), fib(5), fib(6), fib(7), fib(8)]

function Fn = fib(n)
    fibs = zeros(1, n);
    fibs(1) = 0; fibs(2) = 1;
    for i = 3:n
        fibs(i) = fibs(i-1) + fibs(i-2);
    end
    Fn = fibs(n);
end
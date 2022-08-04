% Initialize parameters
initialPrice = 88;
meanPrice = -2;
z = 100;
n = 5000;
MAX_ALPHA = 100;

% Method 1: Pre-buffered array with for loop
avgTimes = zeros(1, MAX_ALPHA);
for alpha = 1:MAX_ALPHA
   avgTimes(alpha) = nAvgStockRandomWalk(initialPrice, meanPrice, alpha, z, n);
end
plot(1:MAX_ALPHA, avgTimes), hold on

% Method 2: Arrayfun approach 
alphas = 1:MAX_ALPHA;
avgTimes2 = arrayfun(@(alpha) nAvgStockRandomWalk(initialPrice,...
    meanPrice, alpha, z, n), alphas);
plot(alphas, avgTimes2);

% Plot data from the two different approaches
plot(1:MAX_ALPHA, avgTimes), hold on, plot(alphas, avgTimes2);
[t, s] = title("Termination time vs. Price scale",...
    "initial price = 3, mean price=5, z=60",...
    "FontName", "Times New Roman");
xlabel("\alpha")
ylabel("termination time")
legend("Method 1: For loop", "Method 2: Arrayfun");

function nAvgT = nAvgStockRandomWalk(initialPrice, meanPrice, alpha, z, n)
    acc = 0;
    for i = 1:n
        acc = acc + stockRandomWalk(initialPrice, meanPrice, alpha, z);
    end
    nAvgT = acc / n;
end

function t = stockRandomWalk(initialPrice, meanPrice, alpha, z)
    price = initialPrice;  % setting up the initial condition
    t = 0;   % variable for time

    while price <= z
        price = price + (meanPrice + (alpha * randn())); % update the price
        t = t + 1; % increment time step by 1
    end
end
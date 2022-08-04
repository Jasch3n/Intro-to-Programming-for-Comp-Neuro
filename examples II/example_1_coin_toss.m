MAX_TOSSES = 1000;
proportions = zeros(1, MAX_TOSSES);
for N = 1:MAX_TOSSES
    proportions(N) = oneCoinExperiment(N);
end
plot(1:MAX_TOSSES, proportions)
title("Number of tosses vs. Proportion of heads")
ylabel("Proportion of heads")
xlabel("Number of tosses")

function proportion = oneCoinExperiment(N) 
    % The program now gets the number of tosses from its input
    heads = 0;  % initial number of heads

    for i = 1:N                 % toss the coin N times
        if rand() >= 0.5
            heads = heads + 1;  % add 1 to number of heads
        end
    end

    proportion = heads / N;
end


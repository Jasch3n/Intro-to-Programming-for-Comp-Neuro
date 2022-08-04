N = 100000; % number of darts we throw
calcPi(N)

function piEstimate = calcPi(N)
    r = 0.5;     % radius of the dart board
    nInside = 0;   % keep track of how many darts land inside the circle
    for i = 1:N % Throw a dart N times
        % Simulate where the dart lands
        x = unifrnd(-r, r);
        y = unifrnd(-r, r);

        % Calculate distance to the center and compare
        dist = sqrt(x^2 + y^2);
        if (dist < r)
            nInside = nInside + 1;
        end
    end
    
    piEstimate = nInside / N * 4;
end
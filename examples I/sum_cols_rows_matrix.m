matrix1 = [11 13 15; 1 9 4; 34 8 12];
rowSum1 = sumRows(matrix1)

function rowSum = sumRows(m)
    [rows, cols] = size(m);
    rowSum = zeros(1, rows);
    for i = 1:rows
        rowSum(i) = sum(m(i,:))
    end
end

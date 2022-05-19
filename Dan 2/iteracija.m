function  [x] = iteracija(A, k, y, x_0)
x = zeros(k+1, 51);
x(1,:) = x_0;
for i = 2:(k+1)
    if ( mod(i,51) == 0)
        x(i,:) = x(i-1, :) - (dot(x(i-1, :), A(51,:))  - y(51)) / norm(A(51,:)) ^ 2  * A(51,:);
    else
    x(i,:) = x(i-1, :) - (dot(x(i-1, :), A(mod(i, 51),:))  - y(mod(i,51))) / norm(A(mod(i,51),:)) ^ 2  * A(mod(i,51),:);
    end
end

end
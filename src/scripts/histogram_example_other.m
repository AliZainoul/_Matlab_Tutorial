n = 666;
x = zeros(1,n);
for i = 1 : n
    x(i) = 20 * rand
end

hx = histogram(x, 40)
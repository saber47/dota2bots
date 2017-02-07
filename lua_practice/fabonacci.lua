-- Given an integer n, return first n number of fabonacci sequence
function fabonacci(n)
    if type(n) ~= type(1) then
        print ('invalid parameter')
        return
    end
    if n < 1 then
        print ('must be positive number')
    end
    io.write('Fabonacci sequence of ',n, '\n\t')
    a = 1
    io.write(a)
    if n < 2 then
        return
    end
    b = 1
    io.write(',',b)
    if n < 3 then
        return
    end
    for i=3,n do
        c = a+b
        a = b
        b = c
        io.write(',',b)
    end
    io.write('\n')
end

fabonacci(5)
fabonacci(20)
fabonacci(55)

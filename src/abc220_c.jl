function main()
    n = parse(Int, readline())
    as = map(x -> parse(Int, x), split(readline()))
    x = parse(Int, readline())
    s = sum(as)
    q, m = divrem(x, s) # x = q * s + m

    tmp = q * s
    counter = 0
    for i in 1:n
        tmp += as[i]
        counter = i
        if tmp > x
            break
        end
    end        
    print(n*q+counter)
end
main()

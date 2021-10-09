function main()
    n,p = map(x -> parse(Int,x), split(readline()))
    as = map(x -> parse(Int,x), split(readline()))
    f = filter(x -> x < p , as)
    print(length(f))
end
main()

parseInt(x) = parse(Int,x)
function main()
    k = parse(Int, readline())
    a,b = map(x -> parse(Int, x; base=k), split(readline()))
    print(a*b)
end
main()

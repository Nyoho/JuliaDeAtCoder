function main()
    a,b = map(x -> parse(Int,x), split(readline()))
    print(32^(a-b))
end
main()

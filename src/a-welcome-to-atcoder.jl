parseInt(x) = parse(Int,x)
function main()
    a = parse(Int, readline())
    b,c = map(parseInt, split(readline()))
    s = readline()
    println(a+b+c," ",s)
end
main()


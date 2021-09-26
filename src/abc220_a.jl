parseInt(x) = parse(Int,x)
function main()
    a,b,c = map(parseInt, split(readline()))
    for i in 1:10
        n = c*i
        if a <= n && n <= b
            print(n)
            return
        end
    end
    print(-1)
end
main()

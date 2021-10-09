# Swiss-System Tournament
function main()
    n,m = map(x -> parse(Int,x), split(readline()))
    a = [] # te
    users = [ [i,0] for i = 1:2n ] # [id, - (number of win)]s
    for i in 1:2n
        push!(a, split(readline(),""))
    end
    for round in 1:m
        for i in 1:n
            id1 = users[2i-1][1]
            id2 = users[2i][1]
            ret = game(a[id1][round], a[id2][round])
            if ret == 1
                users[2i-1][2] += 1
            end
            if ret == 2
                users[2i][2] += 1
            end
        end
        sort!(users, by = x -> (-x[2],x[1]))
    end
    for i in 1:2n
        println(users[i][1])
    end
end

function game(x,y)
    # if x wins return 1
    # if y wins return 2
    x == "C" && y == "P" && return 1
    x == "G" && y == "C" && return 1
    x == "P" && y == "G" && return 1
    x == "P" && y == "C" && return 2
    x == "C" && y == "G" && return 2
    x == "G" && y == "P" && return 2
    return 0
end

main()


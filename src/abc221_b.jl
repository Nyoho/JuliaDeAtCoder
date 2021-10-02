function check_botsu(s,t)
    ss = split(s, "")
    tt = split(t, "")
    f = filter(x -> x[1] != x[2], collect(zip(ss,tt)))
    if length(f) == 2
        if f[1][1] == f[2][2] && f[1][2] == f[2][1]
            "Yes"
        else
            "No"
        end
    else
        "No"
    end
end

function check(s,t)
    ss = split(s, "")
    tt = split(t, "")
    
    different_indices = findall(x -> x[1] != x[2], collect(zip(ss,tt)))
    if length(different_indices) == 2
        i = different_indices[1]
        j = different_indices[2]
        if j - i != 1
            "No"
        elseif ss[i] == tt[j] && ss[j] == tt[i]
            "Yes"
        else
            "No"
        end
    elseif length(different_indices) == 0
        "Yes"
    else
        "No"
    end
end

function main()
    s = readline()
    t = readline()
    print(check(s,t))
end

main()

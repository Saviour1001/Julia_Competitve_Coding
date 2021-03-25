function fact(n)
    if(n==0)
        return 1
    end
    if(n==1)
        return 1
    end
    return n*fact(n-1)
end

fact(10)
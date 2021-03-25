function GCD(a, b)
    if (a == 0)
        return b
    end
    if (b == 0)
        return a
    end
    if (a < b)
        a, b = b, a
    end
    ans = a % b
    while (ans != 0)
        a = b
        b = ans
        ans = a % b
    end
    return b

end

GCD(1001, 2352)

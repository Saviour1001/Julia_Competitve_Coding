function isPowerOfTwo(n)
    return (n & (n - 1) == 0)
end

isPowerOfTwo(4294967296)
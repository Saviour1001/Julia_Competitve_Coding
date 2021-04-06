function rainWater(n, array)
    left = zeros(n)
    left[1] = array[1]
    for i = 2:n
        left[i] = max(left[i-1], array[i])
    end
    right = zeros(n)
    right[n] = array[n]
    for i = n-1:-1:1
        right[i] = max(right[i+1], array[i])
    end
    total = 0
    for i = 1:n
        total += min(left[i], right[i]) - array[i]
    end
    return total
end

println("Enter the length of array!")
n = readline()
n = parse(Int64, n)
array = Int64[]
println("Enter the array !")
for i = 1:n
    temp = readline()
    temp = parse(Int64, temp)
    push!(array, temp)
end

rainWater(n, array)
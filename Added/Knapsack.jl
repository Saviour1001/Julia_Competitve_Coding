function knapsack(weights, values, items, capacity)
    if (items == 0 || capacity == 0)
        return 0
    end
    if (weights[items] > capacity)
        return knapsack(weights, values, items - 1, capacity)
    end
    return max(
        knapsack(weights, values, items - 1, capacity - weights[items]) + values[items],
        knapsack(weights, values, items - 1, capacity),
    )
end

println("Enter the number of items")
n = readline()
n = parse(Int64, n)
println("Enter the capacity of the knapsack")
w = readline()
w = parse(Int64, w)
values = Int64[]
println("Enter the values of each item")
for i = 1:n
    temp = readline()
    temp = parse(Int64, temp)
    push!(values, temp)
end
weights = Int64[]
println("Enter the weights of each item")
for i = 1:n
    temp = readline()
    temp = parse(Int64, temp)
    push!(weights, temp)
end
print(knapsack(weights, values, n, w))


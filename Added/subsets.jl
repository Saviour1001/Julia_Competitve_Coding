

function subsets(array, n)
    println("The subsets are: ")
    powerSet = Set()
    for i = 1:(1<<n)
        s = ""
        for j = 1:n
            if (i & (1 << j) > 0)
                temp = string(array[j])
                s *= temp
            end
        end
        if (length(s) > 0)
            println(s)
        end
    end
end


print("Enter the length of array: ")
n = readline()
n = parse(Int64, n)
print("Enter the elements of array: ")
array = Int64[]
for i = 1:n
    temp = readline()
    temp = parse(Int64, temp)
    push!(array, temp)
end


subsets(array, n)



function maxSubArray(array)
    best=0
    sum=0
    for i in array
        sum=max(i,sum+i)
        best=max(sum,best)
    end
    return best
end

## Input
# n=readline()
# n=parse(Int64,n)
arr=Int64[]
n=5
for i in 1:n
    temp=readline()
    temp=parse(Int64,temp)
    push!(arr,temp)
end 
print(maxSubArray(arr))


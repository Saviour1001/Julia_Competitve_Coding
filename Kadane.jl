# Input
# n=readline()
# n=parse(Int64,n)
# arr=Int64[]
# for i in 1:n
#     temp=readline()
#     temp=parse(Int64,temp)
#     !push(arr,temp)
# end
best=0
sum=0
arr=[1,2,-3,4,5]
for i in arr
    sum=max(i,sum+i)
    best=max(sum,best)
end
print(best)


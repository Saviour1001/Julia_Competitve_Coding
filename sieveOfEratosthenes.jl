function primeSieve(n)
    a=zeros(Int64,n+5)
    for i in 2:n
        if(a[i]==0)
            for j in (i*i):i:n
                a[j]=1
            end
        end
    end
    for i in 2:n
        if(a[i]==0)
            println(i)
        end
    end
end
primeSieve(20)
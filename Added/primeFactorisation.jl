function PrimeFactor(n)
    a=zeros(Int64,n)
    for i in 2:n
        a[i]=i
    end
    for i in 2:n
        if(a[i]==i)
            for j in (i*i):i:n
                if(a[j]==j)
                    a[j]=i
                end
            end
        end
    end
    while(n!=1)
        print("$(a[n]) ")
        n=div(n,a[n])
    end
end

PrimeFactor(495)
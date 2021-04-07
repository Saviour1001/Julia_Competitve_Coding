function subsequence(s, ans)
    if (length(s) == 0)
        println(ans)
        return
    end
    ch = s[1]
    rest_of_string = SubString(s, 2)
    subsequence(rest_of_string, ans)
    subsequence(rest_of_string, ans * ch)
end

println("Enter the string: ")
s = readline()

subsequence(s, "")

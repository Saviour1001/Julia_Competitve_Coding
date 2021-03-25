function towerOfHanoi(discs, source = "A", destination = "B", helper = "C")
    if (discs == 0)
        return
    end
    towerOfHanoi(discs - 1, source, helper, destination)
    println("Move from $(source) to $(destination)")
    towerOfHanoi(discs - 1, helper, destination, source)
end

towerOfHanoi(3)
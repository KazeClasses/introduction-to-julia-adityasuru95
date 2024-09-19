using Test
using Random

"""
Insertion sort algorithm.

This function sorts an array using the insertion sort algorithm.

# Arguments
- `arr::Vector{Int}`: The array to be sorted.

# Examples
julia
arr = [3, 2, 1]
insertion_sort!(arr)
println(arr) \# [1, 2, 3]
"""

function insertion_sort!(array::Array{Int, 1})
    # Insert your code here
    for i in 2:length(array)
        for j in 1:i
            if array[j] > array[i]
                insert!(array, j, array[i])
                deleteat!(array, i+1)
            end
        end
    end
    return array
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort
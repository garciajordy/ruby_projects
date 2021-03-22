def bubble_sort(array)
  # loop till array is sorted
  while array != array.sort do
    array.each_with_index { |n, i|
      if array[i + 1]
        if n > array[i + 1] # if the next number is lower than the previous they change index
          array[i], array[i + 1] = array[i + 1], array[i]
        end
      end
    }
       end
  return array
 end

puts bubble_sort([4, 3, 78, 2, 0, 2])

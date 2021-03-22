def bubble_sort(array)
  # loop till array is sorted
  i = 0
  (array.length*array.length).times do
    array.each_with_index do |n, i|
      if array[i + 1]
        if n > array[i + 1] # if the next number is lower than the previous they change index
          array[i], array[i + 1] = array[i + 1], array[i]
          p array
        end
      end
    end
  end
  return array
end
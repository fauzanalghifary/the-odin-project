def bubble_sort (array)
  sorted = false
  until sorted
    sorted = true
    (0..array.length - 2).each { |i|
      if array[i] > array[i + 1]
        sorted = false
        array[i], array[i + 1] = array[i + 1], array[i]
      end
    }
  end
  array
end

puts bubble_sort([4, 3, 78, 2, 0, 2])
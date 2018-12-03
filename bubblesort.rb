def bubble_sort(arr)
  count = arr.length - 1

  until (count == 1)
    (0..count-1).each do |x|
      if (arr[x] > arr[x+1])
        arr[x], arr[x+1] = arr[x+1], arr[x]
      end
    end
    count -= 1
  end
  p arr
end


def bubble_sort_by(arr)
  count = arr.length - 1

  until(count == 1)
    (0..count-1).each do |x|
      case yield(arr[x], arr[x+1]) 
      when 1
        arr[x], arr[x+1] = arr[x+1], arr[x]
      end
    end
    count -= 1
  end
  p arr
end

bubble_sort([213, 33, 88, 3, 2, 7, 9, 77, 88, 23, 45, 64, 13, 76, 35])

bubble_sort_by([213, 33, 88, 3, 2, 7, 9, 77, 88, 23, 45, 64, 13, 76, 35]) do |x, y|
  x <=> y
end

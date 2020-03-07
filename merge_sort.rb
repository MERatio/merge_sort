# frozen_string_literal: true

def merge_sort(arr)
  return arr if arr.length < 2

  half_length = arr.length / 2
  left = merge_sort(arr[0..half_length - 1])
  right = merge_sort(arr[half_length..-1])
  merge(left, right)
end

def merge(left, right)
  sorted_arr = []
  until left.empty? || right.empty?
    sorted_arr << (left[0] < right[0] ? left.shift : right.shift)
  end
  sorted_arr + left + right
end

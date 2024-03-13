# 1. Написать функцию, которая получает на вход массив вещественных
# чисел и находит такую пару чисел, произведение которых имеет самый
# большой модуль среди всех возможных пар. Постараться избежать полного
# перебора всех вариантов.

def max_abs_mul(arr)
  if arr.size == 0
    return "Array is empty"
  end

  if arr.size == 1
    return arr[0].abs
  end

  if arr.size == 2
    return arr[0].abs * arr[1].abs
  end

  mul = 0
  arr.sort!

  nums = [arr[0].abs, arr[1].abs, arr[-1].abs, arr[-2].abs]
  nums.sort!

  mul = nums[3] * nums[2]

  mul
end

test1 = [-1, 7, 4, 0, 2, -9]  #63
test2 = [2, 3, 1, 9, 5, 9]    #81
test3 = [-8, 6, 8, 3, 4, -3]  #64
test4 = []                    # "Array is empty"
test5 = [-5]                  #5
test6 = [-7, 4]               #28
test7 = [-4, 5, -3]           #20

puts max_abs_mul(test6)
# 2. Написать функцию для умножения комплексных чисел. На вход
# передается 4 вещественных числа: a,b,c,d, возвращаются два числа e и g, для
# которых верно:
#           (a+ib)*(c+id)=e+ig

def mult_complex_nums(a, b, c, d)
  e = a*c - b*d
  g = a*d + b*c
  [e, g]
end

a = 5
b = 3
c = 6
d = 2

e, g = mult_complex_nums(a, b, c, d)
puts "(#{a} + #{b}i) * (#{c} + #{d}i) = #{e} + #{g}i"

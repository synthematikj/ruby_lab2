# 3. Написать скрипт для поиска первых N простых чисел

def is_prime(a)
  (2..Math.sqrt(a)).each do |i|
    return false if a % i == 0
  end

  true
end

def find_first_n_primes(n)
  primes = []
  number = 2

  while primes.length < n
    primes << number if is_prime(number)
    number += 1
  end

  primes
end

n = 5
prime_nums = find_first_n_primes(n)
puts "Первые #{n} простых чисел:"
puts prime_nums.join(', ')

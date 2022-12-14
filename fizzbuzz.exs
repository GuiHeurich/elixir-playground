fizzbuzz = fn
  (0, 0, _) -> "FizzBuzz"
  (0, _, _) -> "Fizz"
  (_, 0, _) -> "Buzz"
  (_, _, c) -> c
end

my_function = fn(n) ->
  fizzbuzz.(rem(n, 3), rem(n, 5), n)
end

my_function.(10)
my_function.(11)
my_function.(12)
my_function.(13)
my_function.(14)
my_function.(15)
my_function.(16)

defmodule Chop do
  def guess(number, range) when number != range.last do
    cond do
      number < range.last -> current(number, range.first..div(range.last, 2), range.first + div(range.last - range.first, 2))
      number > range.last -> current(number, range.last..range.last - range.first, range.first + div(range.last - range.first, 2))
    end
  end

  def current(number, range, guess) do
    IO.puts "Is it #{guess}"
    guess(number, range)
  end
end

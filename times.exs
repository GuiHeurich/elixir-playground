defmodule Times do
  def double(n), do: n * 2
  def triple(n), do: n * 3
  def quadruple(n), do: double(n) * 2
  def multiply(a, b), do: a * b
  def multiply(a, b, c), do: a * b * c
end

defmodule Powers do
  import Kernel, except: [raise: 2, raise: 3]

  def raise(x, n) do
    cond do
      n == 0 -> 1
      n < 0  -> 1.0 / raise(x, -n)
      n > 0  -> raise(x, n, 1)
    end
  end

  def raise(x, n, acc) do
    cond do
      n == 0 -> acc
      n > 0 -> raise(x, n - 1, x * acc)
    end
  end
end

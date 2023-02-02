defmodule MyEnum do
  def all?([], _func), do: true
  def all?([ head | tail ], func) do
    if func.(head) == true do
      all?(tail, func)
    else
      false
    end
  end

  def each([], _), do: :ok
  def each([head | tail], func) do
    func.(head)
    each(tail, func)
  end

  def filter([], _), do: []
  def filter([ head | tail ], func) do
    if func.(head) do
      [ head | filter(tail, func) ]
    else
      filter(tail, func)
    end
  end

  def split([], _count), do: []
  def split(list, count) do
    [ filter(list, some_function) ], [ Enum.reject(list, some_function)]

    each(list, &(if: Enum.find_index(&1) == count ))
    Enum.take()


  end

  def take(list, amount) do

  end
end

defmodule MyString do
  require Integer

  def all_printable?(str) when is_list(str), do: _all_printable?(str)
  def _all_printable?([]), do: true
  def _all_printable?(str) do
    [ head | tail ] = str
    if head in 32..126 do
      all_printable?(tail)
    else
      false
    end
  end

  def anagram?(word1, word2) when length(word1) == length(word2) do
    if (word1 -- word2) == [] do
      true
    else
      false
    end
  end

  def center(list) do
    padding = Enum.sort_by(list, &(String.length(&1))) |> List.last() |> String.length()
    if Integer.is_even(padding) do
      list
      |> Enum.map(&(String.pad_leading(&1, div(padding - String.length(&1), 2) + String.length(&1), " ")))
      |> Enum.map(&(String.pad_trailing(&1, padding, " ")))
      |> Enum.each(&(IO.puts &1))
    else
      list
      |> Enum.map(&(String.pad_leading(&1, div(padding, 2), " ")))
      |> Enum.map(&(String.pad_trailing(&1, padding, " ")))
      |> Enum.each(&(IO.puts &1))
    end
  end
end

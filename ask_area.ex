defmodule AskArea do
  alias Inspect.Stream
  def area do
    input = get_char()
    shape = char_to_shape(input)
    {d1, d2} = case shape do
      :rectangle -> get_dimensions("width", "height")
      :triangle -> get_dimensions("base", "height")
      :ellipse -> get_dimensions("major radius", "minor radius")
      :unknown -> {:ok, IO.puts("Unknown shape #{String.downcase(input)}")}
    end
    calculate(shape, d1, d2)
  end

  def calculate(shape, d1, d2) do
    Geom.area(shape, d1, d2)
  end

  def get_dimensions(prompt_one, prompt_two) do
    {
      get_number(prompt_one),
      get_number(prompt_two)
    }
  end

  def get_number(prompt) do
    IO.gets("Enter #{prompt} > ")
    |> String.trim()
    |> String.to_integer()
  end

  def get_char do
    String.trim(IO.gets("R)ectangle, T)riangle, or E)llipse: "))
      |> String.first()
      |> String.upcase()
  end

  def char_to_shape(char) do
    cond do
      char == "R" -> :rectangle
      char == "T" -> :triangle
      char == "E" -> :ellipse
      true        -> :unknown
    end
  end
end

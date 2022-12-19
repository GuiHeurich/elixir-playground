defmodule Geom do
  def area() do
    fn
      (:rectangle, a, b) when a >= 0 and b >= 0 -> a * b
      (:triangle, a, b)  when a >= 0 and b >= 0 -> a * b / 2.0
      (:ellipse, a, b)   when a >= 0 and b >= 0 -> :math.pi() * a * b
      (_, _, _) -> 0
    end
  end
end

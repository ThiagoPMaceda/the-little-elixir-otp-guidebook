defmodule TransformList do
  def transform([]), do: []

  def transform([head | tail]), do: transform(head) ++ transform(tail)

  def transform(head), do: [head]
end

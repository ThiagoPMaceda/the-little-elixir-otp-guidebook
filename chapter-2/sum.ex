defmodule Sum do
  def list(list) do
    Enum.reduce(list, fn x, acc -> x + acc end)
  end
end

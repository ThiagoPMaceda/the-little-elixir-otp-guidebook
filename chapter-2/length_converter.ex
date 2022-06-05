defmodule NumberGuard do
  defguard is_number_and_is_positive(value) when is_integer(value) and value >= 0
end

defmodule MeterToLengthConverter do
  import NumberGuard

  def convert(:feet, m) when is_number_and_is_positive(m), do: m * 3.28084
  def convert(:inch, m) when is_number_and_is_positive(m), do: m * 39.3701
  def convert(:yard, m) when is_number_and_is_positive(m), do: m * 1.09361

  def convert(_, _) do
    "you need to pass in the first argument the measure and in the second argument the number to convert"
  end
end

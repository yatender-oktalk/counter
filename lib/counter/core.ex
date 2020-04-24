defmodule Counter.Core do
  @spec inc(number) :: number
  @doc """
  inc is incrementor or counter a pure function which just increases
  the value of a number.
  """
  def inc(value) do
    value + 1
  end
end

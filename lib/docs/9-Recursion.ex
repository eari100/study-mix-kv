defmodule Recursion do
  def print_multiple_times(msg, n) when n > 0 do
    IO.puts(msg)
    print_multiple_times(msg, n-1)
  end

  def print_multiple_times(_msg, 0) do
    :ok
  end
end

defmodule Math do
  def sum_list([head | tail], accumulator) do
    sum_list(tail, head + accumulator)
  end

  def sum_list([], accumulator) do
    accumulator
  end
end

defmodule Math do
  def double_each([head | tail]) do
    [head * 2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end
end

defmodule Math do
  def sum_list(list) do
    Enum.reduce(list, 0, fn(x, acc) -> x + acc end)
  end
  def double_each(list) do
    Enum.map(list, fn(x) -> x * 2 end)
  end
end
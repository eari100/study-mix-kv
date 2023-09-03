defmodule Study_Enumerables do
  def sum(list) when(is_list(list)) do
    Enum.map(list, fn x -> x * 2  end)
  end

  def sum(map) when(is_map(map)) do
    Enum.map(%{1 => 2, 3 => 4}, fn {k, v} -> k * v end)
  end

  # ..
  def sum_list() do
    Enum.map(1..3, fn x -> x * 2 end)
  end

  # capture
  def capture() do
    Enum.reduce(1..3, &+/2)
  end
end

defmodule Eager_vs_Lazy do
  def filter(range) do
    odd? = &(rem(&1, 2) != 0)
    Enum.filter(range, odd?)
  end
end
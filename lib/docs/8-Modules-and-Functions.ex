defmodule Math do
  def sum(a, b) do
    do_sum(a, b)
  end

  defp do_sum(a, b) do
    a + b
  end

  def zero?(0), do: true
  def zero?(x) when is_integer(x), do: false
end

# Function Capturing

#fun = &Math.zero?/1
#is_function(fun) # true
#fun.(0) # true
#&is_function/1
#(&is_function/1).(fun) # true
#
#add = &+/2
#add.(1, 2)
#
#fun = &(&1 + 1)
#fun.(1) # 2
#
#fun2 = &"Good #{&1}"
#fun2.("morning")



#defmodule Concat do
#  def join(a, b, sep \\ " ") do
#    a <> sep <> b
#  end
#end

defmodule DefaultTest do
  def dowork(x \\ "hello") do
    x
  end
end

#defmodule Concat do
#  def join(a, b \\ nil, sep \\ " ")
#
#  def join(a, b, _seq) when is_nil(b) do
#    a
#  end
#
#  def join(a, b, sep) do
#    a <> sep <> b
#  end
#end

defmodule Concat do
  def join(a, b) do
    IO.puts "***First join"
    a <> b
  end

#  warning
#  def join(a, b, sep \\ " ") do
#    IO.puts "***Second join"
#    a <> sep <> b
#  end
end
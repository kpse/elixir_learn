defmodule Math do
  def sum_list([head | tail], acc) do
    sum_list(tail, head + acc)
  end
  def sum_list([], acc) do
    acc
  end
end

IO.puts Math.sum_list([1,2,3,4], 0)

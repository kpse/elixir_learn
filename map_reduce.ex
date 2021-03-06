defmodule Math2 do
  def sum_list([head | tail], acc) do
    sum_list(tail, head + acc)
  end
  def sum_list([], acc) do
    acc
  end

  def double_each([head | tail]) do
    [head*2 | double_each(tail)]
  end

  def double_each([]) do
    []
  end

end

IO.puts Math2.sum_list(Math2.double_each([1,2,3,4]), 0)

IO.puts Enum.reduce(Enum.map([1,2,3], fn(x) -> x * 2 end), 0, fn(x, acc) -> x + acc end)

IO.puts Enum.reduce(Enum.map([1,2,3], &(&1 * 2)), 0, &+/2)

odd? = &(rem(&1, 2) !=0)

IO.puts 1..100_000 |> Enum.map(&(&1 * 3)) |> Enum.filter(odd?) |> Enum.sum

Enum.take(Stream.cycle([1,2,3]), 10) |> Enum.each(&IO.write/1)
IO.puts "\r"
IO.puts Enum.join(["hello", "world"], ",")

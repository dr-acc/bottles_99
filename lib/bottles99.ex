defmodule Bottles99 do
  def sing do
    task1 =
      Enum.map(99..0, fn each ->
        Task.async(fn ->
          IO.inspect("#{self()} #{each} bottles of beer on the wall...take one down")
        end)
      end)
    Task.await_many(task1) |> IO.inspect(label: "Task 1 Response")
  end
end

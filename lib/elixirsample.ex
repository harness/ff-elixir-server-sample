defmodule Elixirsample do

  def getFlag(pid) do
    x = true
    y = true

    {:ok, result} = FFHelper.evaluate(pid, {"harnessdemodarkmode", "Elixir-test", false})

    IO.puts "Flag: #{result}"
    Process.sleep(10000)

    if x != y do
      IO.puts "End of Loop"
    else
      getFlag(pid)
    end
  end

  def init do
    FFHelper.start_link()
  end

end

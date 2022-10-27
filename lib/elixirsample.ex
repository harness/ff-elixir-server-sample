defmodule Elixirsample do

  def getFlagLoop(pid) do
    x = true
    y = true
    target = %{
      identifier: "harness",
      name: "Harness",
      anonymous: false,
      attributes: %{}
    }
    result = FFHelper.bool_variation(pid, "harnessappdemodarkmode", target, false)

    IO.puts "Flag: #{result}"
    Process.sleep(10000)

    if x != y do
      IO.puts "End of Loop"
    else
      getFlagLoop(pid)
    end
  end

  def start do
    FFHelper.start_link()
  end
end

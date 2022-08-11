defmodule ElixirsampleTest do
  use ExUnit.Case
  doctest Elixirsample

  test "greets the world" do
    assert Elixirsample.hello() == :world
  end
end

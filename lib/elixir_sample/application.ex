defmodule ElixirSample.Application do
  require Logger

  use Application

  def start(_type, _args) do
    ElixirSample.Supervisor.start_link()
  end
end
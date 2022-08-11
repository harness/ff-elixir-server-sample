defmodule FFHelper do
  use GenServer

  def start_link do
    GenServer.start_link(__MODULE__, :ok, [])
  end

  def init(_opts) do
    {:ok, %{}}
  end

  def evaluate(pid, {flag, target, default}) do
    {:ok, true}
  end

  def handle_call({:evaluate, {_flag, _target, _default}}, _from, result) do
    {:reply, :ok, result}
  end

  def handle_cast(_msg, state) do
    {:noreply, state}
  end
end

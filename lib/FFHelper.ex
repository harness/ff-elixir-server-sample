defmodule FFHelper do
  use GenServer

  def start_link() do
    GenServer.start_link(__MODULE__, :ok)
  end

  def init(:ok) do
    apiKey = String.to_charlist(Application.get_env(:elixirsample, :api_key))
    :cfclient.start(apiKey, %{})
    {:ok, %{}}
  end

  def bool_variation(pid, flag, target, default) do
    GenServer.call(pid, {:bool_variation, flag, target, default})
  end

  def handle_call({:bool_variation, flag, target, default}, _from, state) do
    {:reply, :cfclient.bool_variation(flag, target, default), state}
  end

  def handle_info(_msg, state) do
    {:noreply, state}
  end
end

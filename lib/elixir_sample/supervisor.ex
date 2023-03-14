defmodule ElixirSample.Supervisor do
  @moduledoc false
  
  use Supervisor

  def start_link(opts \\ []) do
    Supervisor.start_link(__MODULE__, opts, name: __MODULE__)
  end


  def init(_opts) do

#    harness_args = Application.get_env(:cfclient, :harness_project_1_config, [])

    harness_args = Application.get_env(:elixirsample, :cfclient, [])

    children = [
      %{
        id: :project1_cfclient_instance,
        start: {:cfclient_instance, :start_link, [harness_args]},
        type: :supervisor
      },
    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

end
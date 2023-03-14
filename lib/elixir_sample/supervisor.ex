defmodule ElixirSample.Supervisor do
  @moduledoc false
  
  use Supervisor

  def start_link(opts \\ []) do
    Supervisor.start_link(__MODULE__, opts, name: __MODULE__)
  end


  def init(_opts) do

    project_1_config = Application.get_env(:elixirsample, :project1, [])

    project_2_config = Application.get_env(:elixirsample, :project2, [])


    children = [
      %{
        id: :project1_cfclient_instance,
        start: {:cfclient_instance, :start_link, [project_1_config]},
        type: :supervisor
      },
      %{
        id: :project2_cfclient_instance,
        start: {:cfclient_instance, :start_link, [project_2_config]},
        type: :supervisor
      },
    ]


#    children = [
##      %{
##        id: :project1_cfclient_instance,
##        start: {:cfclient_instance, :start_link, [harness_args]},
##        type: :supervisor
##      },
#    ]

    Supervisor.init(children, strategy: :one_for_one)
  end

end
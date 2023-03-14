defmodule ElixirSample.EvaluationSample do
  require Logger

  def getFlagLoop() do
    target = %{
      identifier: "harness",
      name: "Harness",
      anonymous: false,
      attributes: %{}
    }

    # Default instance
    flag = "projectflag"
    result = :cfclient.bool_variation(flag, target, false)

    Logger.info(
      "SVariation for Flag #{flag} with Target #{inspect(target)} is: #{result}"
    )

    # Instance 1
    project_1_flag = "project1flag"
    project_1_result = :cfclient.number_variation(:project1, project_1_flag, target, 3)

    Logger.info(
      "SDK instance 1: Variation for Flag #{project_1_flag} with Target #{inspect(target)} is: #{project_1_result}"
    )

    # Instance 2
    project_2_flag = "project2flag"
    project_2_result = :cfclient.bool_variation(:project2, project_2_flag, target, false)

    Logger.info(
      "SDK instance 2: Variation for Flag #{project_2_flag} with Target #{inspect(target)} is: #{project_2_result}"
    )

    Process.sleep(10000)
    getFlagLoop()
  end
end

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
    flag = "harnessappdemodarkmode"
    result = :cfclient.bool_variation(flag, target, false)

    Logger.info(
      "SVariation for Flag #{flag} with Target #{inspect(target)} is: #{result}"
    )

    # Instance 1
    project_1_flag = "harnessappdemodarkmode"
    project_1_result = :cfclient.bool_variation(:project1, project_1_flag, target, false)

    Logger.info(
      "SDK instance 1: Variation for Flag #{project_1_flag} with Target #{inspect(target)} is: #{project_1_result}"
    )

    # Instance 1
    project_2_flag = "harnessappdemodarkmodeproject2"
    project_2_result = :cfclient.bool_variation(:project2, project_1_flag, target, false)

    Logger.info(
      "SDK instance 2: Variation for Flag #{project_2_flag} with Target #{inspect(target)} is: #{project_2_result}"
    )

    Process.sleep(10000)
    getFlagLoop()
  end
end

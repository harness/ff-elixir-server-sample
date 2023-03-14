defmodule ElixirSample.EvaluationSample do
  require Logger

  def getFlagLoop() do
    target = %{
      identifier: "harness",
      name: "Harness",
      anonymous: false,
      attributes: %{}
    }

    flag_identifier = "harnessappdemodarkmode"
    result = :cfclient.bool_variation(:project1, flag_identifier, target, false)

    Logger.info(
      "Variation for Flag #{flag_identifier} with Target #{inspect(target)} is: #{result}"
    )

    Process.sleep(10000)
    getFlagLoop()
  end
end

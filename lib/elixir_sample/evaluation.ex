defmodule ElixirSample.EvaluationSample do
  require Logger

  def bucketByEvaluation(flag) do
    targetIdentifier = "harness"

    # This target will deterministically get the same evaluation for a given flag.
    # If a different flag is used, it will still be deterministic but will be a different bucket.
    # To get the same evaluation per flag, you can simply remove the flag from the attribute.
    target = %{
      identifier: targetIdentifier,
      name: "Harness",
      anonymous: false,
      attributes: %{myBucketByAttribute: targetIdentifier <> flag}
    }

    result = :cfclient.bool_variation(flag, target, false)

    Logger.info(
      "SVariation for Flag #{flag} with Target #{inspect(target)} is: #{result}"
    )
  end

  def singleInstanceFlagEvaluation() do
    target = %{
      identifier: "harness",
      name: "Harness",
      anonymous: false,
      attributes: %{}
    }

    flag = "projectflag"
    result = :cfclient.bool_variation(flag, target, false)

    Logger.info(
      "SVariation for Flag #{flag} with Target #{inspect(target)} is: #{result}"
    )
  end

  def multiInstanceFlagEvaluation() do
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
    multiInstanceFlagEvaluation()
  end
end

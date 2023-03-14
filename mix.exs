defmodule ElixirSample.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixirsample,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      mod: {ElixirSample.Application, []},
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cfclient, github: "harness/ff-erlang-server-sdk", tag: "FFM-7187"}
    ]
  end
end

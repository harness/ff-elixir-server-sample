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
      {:cfclient, "~> 3.0", hex: :harness_ff_erlang_server_sdk}
    ]
  end
end

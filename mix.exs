defmodule Elixirsample.MixProject do
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
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:cfclient, git: "https://github.com/harness/ff-erlang-server-sdk", tag: "0.4.0-beta.2"}
    ]
  end
end

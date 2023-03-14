import Config

config :logger, :console, format: "[$level] $message\n"


# Default instance
config :cfclient,
       [api_key: System.get_env("FF_API_KEY"),
        config: [config_url: "https://config.ff.harness.io/api/1.0"]]


# Instance for project 1
config :elixirsample,  project1:
       [
        api_key: System.get_env("FF_API_KEY"),
        config: [name: :project1]
       ]

# Instance for project 2
config :elixirsample,  project2:
  [
  api_key: System.get_env("FF_API_KEY_2"),
  config: [name: :project2]
]

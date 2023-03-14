import Config

config :logger, :console, format: "[$level] $message\n"


# Start up an instance of CFClient
config :cfclient,
       [api_key: System.get_env("YOUR_API_KEY"),
        config: [config_url: "https://config.ff.harness.io/api/1.0"]]

# For more complex applications where you need to use multiple Harness projects, you can start up additional
# SDK instances for each project.

# Instance for project 1
config :elixirsample,  project1:
       [
        api_key: System.get_env("PROJECT_1_API_KEY"),
        config: [name: :project1]
       ]

# Instance for project 2
config :elixirsample,  project2:
  [
  api_key: System.get_env("PROJECT_2_API_KEY"),
  config: [name: :project2]
]

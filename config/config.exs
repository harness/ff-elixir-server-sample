import Config

config :logger, :console, format: "[$level] $message\n"


# Start up an instance of CFClient
config :cfclient,
       [api_key: System.get_env("HARNESS_API_KEY"),
       # For additional config you can pass in, see Erlang SDK docs https://github.com/harness/ff-elixir-server-sample/pull/4
       # we are just using the main config url here as an example.
        config: [config_url: "https://config.ff.harness.io/api/1.0"]]

# For more complex applications where you need to use multiple Harness projects, you can start up additional
# SDK instances for each project.

# Instance for project 1
config :elixirsample,  project1:
       [
        api_key: System.get_env("HARNESS_PROJECT_1_KEY"),
        config: [name: :project1]
       ]

# Instance for project 2
config :elixirsample,  project2:
  [
  api_key: System.get_env("HARNESS_PROJECT_2_KEY"),
  config: [name: :project2]
]

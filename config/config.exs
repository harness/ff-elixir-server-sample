import Config

config :logger, :console, format: "[$level] $message\n"


# Default instance TODO uncomment
#config :cfclient,
#       [api_key: System.get_env("FF_API_KEY"),
#        config: [config_url: "https://config.ff.harness.io/api/1.0"]]

config :elixirsample, :cfclient,
       [
         api_key: System.get_env("FF_API_KEY"),
         config: [name: :project1]
       ]


## Named instance 1
##config :cfclient,
##       harness_project_1_config:  [api_key: System.get_env("FF_API_KEY"),config: [name: :project1]]
#
##
#
#config :elixirsample, :cfclient,
#       api_key: System.get_env("FF_API_KEY")
## Named instance 2
## TODO
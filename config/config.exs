import Config

config :logger, :console, format: "[$level] $message\n"


# Default instance TODO uncomment
#config :cfclient,
#       [api_key: System.get_env("FF_API_KEY"),
#        config: [config_url: "https://config.ff.harness.io/api/1.0"]]

#config :cfclient,  :elixirsample,
#       [
#         api_key: System.get_env("FF_API_KEY"),
#         config: [name: :project1]
#       ]

config :elixirsample,  project1:
       [
        api_key: System.get_env("FF_API_KEY"),
        config: [name: :project1]
       ]

config :elixirsample,  project2:
  [
  api_key: System.get_env("FF_API_KEY_2"),
  config: [name: :project2]
]

#config :elixirsample,  :cfclient,
#       [
#         api_key: System.get_env("FF_API_KEY"),
#         project1_config: [config: [name: :project1]],
#         project2_config: [config: [name: :project2]]
#
#       ]


#config :elixirsample2,  :cfclient,
#       [
#         api_key: System.get_env("FF_API_KEY"),
#         config: [name: :project12]
#       ]


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
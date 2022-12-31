# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :web_api,
  namespace: WebAPI,
  generators: [context_app: false, binary_id: true]

# Configures the endpoint
config :web_api, WebAPI.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OtHZ+xz6gcLvJF3CsHz4IBZZWgb5MA6dj6htE7vYZNnW8lQDr1Xi96gvnWM1BUtE",
  render_errors: [view: WebAPI.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: WebAPI.PubSub,
  live_view: [signing_salt: "1Cj6GYe+"]

# Configure Mix tasks and generators
config :core,
  ecto_repos: [Core.Repo]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

# Phoenix JSON library
config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"

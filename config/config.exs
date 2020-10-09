# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of Mix.Config.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
use Mix.Config

# Configure Mix tasks and generators
config :integrator,
  ecto_repos: [Integrator.Repo]

config :integrator_web,
  ecto_repos: [Integrator.Repo],
  generators: [context_app: :integrator]

# Configures the endpoint
config :integrator_web, IntegratorWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "0B8ZEcnj+1cFi+E9UNXyapZd5zBfWxJfjwwSsHNl7UhfqZEE7IobLvhRgE4S7KlP",
  render_errors: [view: IntegratorWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Integrator.PubSub,
  live_view: [signing_salt: "+sm+gskY"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"

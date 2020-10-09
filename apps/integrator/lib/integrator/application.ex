defmodule Integrator.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Integrator.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Integrator.PubSub}
      # Start a worker by calling: Integrator.Worker.start_link(arg)
      # {Integrator.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: Integrator.Supervisor)
  end
end

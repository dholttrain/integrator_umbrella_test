defmodule Integrator.Repo do
  use Ecto.Repo,
    otp_app: :integrator,
    adapter: Ecto.Adapters.Postgres
end

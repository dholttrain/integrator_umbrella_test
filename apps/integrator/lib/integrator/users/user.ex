defmodule Integrator.Users.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field :company_name, :string
    field :email, :string
    field :first_name, :string
    field :last_name, :string
    field :sf_id, :string

    timestamps()
  end

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, [:email, :sf_id, :first_name, :last_name, :company_name])
    |> validate_required([:email, :sf_id, :first_name, :last_name, :company_name])
  end
end

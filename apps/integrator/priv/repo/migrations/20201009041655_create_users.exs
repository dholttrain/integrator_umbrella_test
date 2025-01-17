defmodule Integrator.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :email, :string
      add :sf_id, :string
      add :first_name, :string
      add :last_name, :string
      add :company_name, :string

      timestamps()
    end

  end
end

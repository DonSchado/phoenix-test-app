defmodule Discuss.Repo.Migrations.ChangeUsers do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :email, :string
      add :provider, :string
      add :token, :string
    end
  end
end

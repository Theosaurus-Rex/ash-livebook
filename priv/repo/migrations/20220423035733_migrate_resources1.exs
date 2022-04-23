defmodule AshLivebook.Repo.Migrations.MigrateResources1 do
  @moduledoc """
  Updates resources based on their most recent snapshots.

  This file was autogenerated with `mix ash_postgres.generate_migrations`
  """

  use Ecto.Migration

  def up do
    create table(:users, primary_key: false) do
      add :email, :text, null: false
      add :id, :uuid, null: false, primary_key: true
    end

    create table(:tweets, primary_key: false) do
      add :id, :uuid, null: false, primary_key: true
      add :body, :text, null: false
      add :public, :boolean, null: false, default: false
      add :inserted_at, :utc_datetime_usec, null: false, default: fragment("now()")
      add :updated_at, :utc_datetime_usec, null: false, default: fragment("now()")
    end
  end

  def down do
    drop table(:tweets)

    drop table(:users)
  end
end
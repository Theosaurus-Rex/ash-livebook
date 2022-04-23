defmodule AshLivebook.User do
  use Ash.Resource, data_layer: AshPostgres.DataLayer

  postgres do
    repo AshLivebook.Repo
    table "users"
  end

  actions do
    create :create
    read :read
    update :update
    destroy :destroy
  end

  attributes do
    attribute :email, :string,
      allow_nil?: false,
      constraints: [
        match: ~r/^[\w.!#$%&’*+\-\/=?\^`{|}~]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*$/i
      ]

    uuid_primary_key :id
  end
end

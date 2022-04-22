defmodule AshLivebook.Tweet do
  use Ash.Resource

  attributes do
    uuid_primary_key :id

    attribute :body, :string do
      allow_nil? false
      constraints max_length: 255
    end

    attribute :public, :boolean, allow_nil?: false, default: false

    create_timestamp :inserted_at

    update_timestamp :updated_at
  end
end

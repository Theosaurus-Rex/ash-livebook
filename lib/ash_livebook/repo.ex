defmodule AshLivebook.Repo do
  use AshPostgres.Repo,
    otp_app: :ashlivebook,
    adapter: Ecto.Adapters.Postgres
end


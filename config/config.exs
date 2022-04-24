import Config

config :ashlivebook, AshLivebook.Repo,
  database: "ashlivebook_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

config :ashlivebook, ecto_repos: [AshLivebook.Repo]

config :ashlivebook, ash_apis: [AshLivebook.Api]

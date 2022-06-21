import Config

# jbj runtime variables
config :ashlivebook, AshLivebook.Repo,
  database: "ashlivebook_repo",
  username: "postgres",
  password: System.get_env("DB_PASSWORD") || "postgres",
  hostname: "localhost"


defmodule AshLivebook.MixProject do
  use Mix.Project

  def project do
    [
      app: :ashlivebook,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ash, "~> 1.51"},
      {:ash_postgres, "~> 0.41"},
      {:ecto, "~> 3.7"},
      {:ecto_sql, "~> 3.7"}
    ]
  end
end

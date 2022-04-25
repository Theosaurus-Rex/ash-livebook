# AshLivebook

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ashlivebook` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ashlivebook, "~> 0.1.0"}
  ]
end
```

### Install livebook:

```
mix escript.install hex livebook
```

If you are running `asdf` you may need to:

```
asdf reshim elixir
```

Start the livebook server from inside the repo:

```
livebook server
```

Visit http://localhost:8080

Copy the token from the output of the `livebook server` command into the livebook page.

Connect the livebook instance to the repo by changing the Runtime settings in the livebook page to use `Mix standalone`, and select the repo.

This will start a new local node in the context of a Mix project. This way all your code and dependencies will be available within the notebook.



defmodule AshLivebook.Registry do
  use Ash.Registry,
    extensions: [Ash.Registry.ResourceValidations]

  entries do
    entry AshLivebook.Tweet
    entry AshLivebook.User
  end
end

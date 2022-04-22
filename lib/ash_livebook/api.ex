defmodule AshLivebook.Api do
  use Ash.Api

  resources do
    registry AshLivebook.Registry
  end
end

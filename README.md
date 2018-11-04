# CouchdbEcto

A CouchDB adapter for Ecto.

[![Build Status](https://travis-ci.org/byteeasy/couchdb_ecto.svg?branch=master](https://travis-ci.org/byteeasy/couchdb_ecto)


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `couchdb_ecto` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:couchdb_ecto, "~> 0.1.0"}
  ]
end
```


```elixir
# In your config/config.exs file
config :my_app, Repo,
  adapter: Mongo.Ecto,
  database: "contracts",
  username: "byteeasy",
  password: "bytenoteasy",
  hostname: "localhost"

# In your application code
defmodule Repo do
  use Ecto.Repo, otp_app: :contract_app
end

defmodule Contract do
  use Ecto.Model

  @primary_key {:id, :binary_id, autogenerate: true}
  schema "contract" do
    field :counter_party     # Defaults to type :string
    field :quantity, :integer
    field :price,    :float, default: 0.0
  end
end

defmodule Simple do
  import Ecto.Query

  def get_contracts do
    query = from contract in Contract,
          where: contract.quantity > 100,
         select: contract
    Repo.all(query)
  end
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/couchdb_ecto](https://hexdocs.pm/couchdb_ecto).


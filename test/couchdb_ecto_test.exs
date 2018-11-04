defmodule CouchdbEctoTest do
  use ExUnit.Case
  doctest CouchdbEcto

  test "greets the world" do
    assert CouchdbEcto.hello() == :world
  end
end

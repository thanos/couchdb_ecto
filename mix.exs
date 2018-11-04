defmodule CouchdbEcto.MixProject do
  use Mix.Project

  def project do
    [
      app: :couchdb_ecto,
      version: "0.1.0",
      elixir: "~> 1.6",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      test_coverage: [tool: Coverex.Task],
      deps: deps()
    ] 
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ecto, "~> 3.0"},
      {:couchbeam_amuino, "~> 1.4.3-amuino.8"},
      {:mix_test_watch, "~> 0.2.6", only: :dev, runtime: false},
      {:dialyxir, "~> 0.5.0", only: [:dev, :test], runtime: false},
      {:credo, "~> 0.7.2", only: [:dev, :test], runtime: false},
      {:coverex, "~> 1.4.10", only: :test}
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
    ]
  end
end

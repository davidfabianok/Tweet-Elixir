defmodule Tweet.MixProject do
  use Mix.Project

  def project do
    [
      app: :tweet,
      version: "0.1.0",
      elixir: "~> 1.10",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Tweet.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:credo, "~> 1.2"},
      {:quantum, "~> 2.4"},
      {:extwitter, "~> 0.12.0"}
    ]
  end
end

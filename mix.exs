defmodule Wit.Mixfile do
  use Mix.Project

  def project do
    [app: :elixir_wit,
     version: "2.0.1",
     elixir: "~> 1.4",
     description: description(),
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     package: package(),
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :httpotion]]
  end

  def description do
    "Elixir client for the Wit API. Wit is the natural language engine for creating Bots."
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:poison, "~> 3.0"},
      {:httpotion, "~> 3.0.0"},
      {:elixir_uuid, "~> 1.2"},
      {:inch_ex, ">= 0.0.0", only: :docs},

      #Dev dependencies
      {:dialyxir, "~> 0.5", only: [:dev]},
      {:ex_doc, "~> 0.15", only: [:dev]},
      {:timex, "~> 3.1", only: [:test]}
    ]
  end

  defp package do
    [
      licenses: ["MIT License"],
      maintainers: ["Zohaib Rauf", "Micah Wedemeyer"],
      links: %{
        "Github" => "https://github.com/zabirauf/elixir_wit",
        "Docs" => "https://hexdocs.pm/elixir_wit/"
      }
    ]
  end
end

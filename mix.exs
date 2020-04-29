defmodule Finch.MixProject do
  use Mix.Project

  def project do
    [
      app: :finch,
      version: "0.1.0",
      elixir: "~> 1.7",
      elixirc_paths: elixirc_paths(Mix.env()),
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:mint, "~> 1.0"},
      {:castore, "~> 0.1.5"},
      {:nimble_pool, "~> 0.1"},
      {:nimble_options, "~> 0.2"},
      {:telemetry, "~> 0.4"},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
      {:credo, "~> 1.3", only: [:dev, :test]},
      {:bypass, "~> 1.0", only: :test},
      {:cowboy, "~> 2.0", only: [:dev, :test]},
      {:plug_cowboy, "~> 2.0", only: [:dev, :test]},
      {:x509, "~> 0.8", only: [:dev, :test]},
    ]
  end
end

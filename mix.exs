defmodule RosettaHomeRavenSmcd.Mixfile do
  use Mix.Project

  def project do
    [app: :rosetta_home_raven_smcd,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [extra_applications: [:logger, :raven_smcd ,:cicada]]
  end

  defp deps do
    [
      {:raven_smcd, "~> 0.1.9"},
      {:cicada, github: "rosetta-home/cicada", optional: true}
    ]
  end
end

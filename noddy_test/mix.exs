defmodule NoddyTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :noddy_test,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {NoddyTest.Application, []}
    ]
  end

  defp deps do
    [
      { :noddy, path: "../../noddy"              },
      { :comp1, path: "../comp1", runtime: false },
      { :comp2, path: "../comp2", runtime: false },
    ]
  end
end

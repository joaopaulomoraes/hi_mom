defmodule HiMom.MixProject do
  use Mix.Project

  def project do
    [
      app: :hi_mom,
      description: "A blazingly fast Elixir library to say \"Hi\" to your mom!",
      version: "0.1.1",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/joaopaulomoraes/hi_mom",
      package: [
        name: "hi_mom",
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/joaopaulomoraes/hi_mom"}
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end

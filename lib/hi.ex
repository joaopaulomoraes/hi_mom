defmodule Hi do
  @moduledoc """
  A blazingly fast Elixir library to say "Hi" to your mom.
  """

  alias Languages

  @doc """
  Say "Hi" to your mom.

  ## Examples

      iex> Hi.mom()
      "Hi, mom!"

  """
  def mom() do
    Languages.get(:en)
    |> remove_brackets
  end

  @doc """
  Say "Hi" to your mom in the default language.

  Default language: `:en`.

  ## Parameters

    - `name`: String that represents the mom's name

  ## Examples

      iex> Hi.mom("Kate")
      "Hi, Kate!"

  """
  def mom(name), do: mom(name, :en)

  @doc """
  Say "Hi" to your mom in an especific language.

  ## Parameters

    - `name`: String that represents the mom's name
    - `language`: Atom representing the language specified

  ## Examples

      iex> Hi.mom(nil, :pt)
      "Oi, mãe!"

      iex> Hi.mom("Maria", :pt)
      "Oi, Maria!"

      iex> Hi.mom("Esmeralda", :es)
      "Hola, Esmeralda!"

  """
  def mom(name, language) do
    grettings = Languages.get(language)

    case name do
      name when is_nil(name) -> grettings |> remove_brackets
      name when is_binary(name) -> grettings |> inject(name)
      _ -> mom()
    end
  end

  @doc false
  defp inject(greeting, name) do
    greeting
    |> String.replace(~r/\{{2}([^}]+)\}{2}/, name)
  end

  @doc false
  defp remove_brackets(greeting) do
    greeting
    |> String.replace(~r/[{}]{2}/, "")
  end
end

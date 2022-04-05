defmodule Hi do
  alias Langs

  @lang :en

  def mom() do
    Langs.lang(@lang)
    |> remove_brackets
  end

  def mom(name) do
    mom(name, @lang)
  end

  def mom(name, lang) when is_nil(name) do
    Langs.lang(lang)
    |> remove_brackets
  end

  def mom(name, lang) when is_binary(name) do
    Langs.lang(lang)
    |> inject_name(name)
  end

  defp inject_name(greeting, name) do
    greeting
    |> String.replace(~r/\{{2}([^}]+)\}{2}/, name)
  end

  defp remove_brackets(greeting) do
    greeting
    |> String.replace(~r/[{}]{2}/, "")
  end
end

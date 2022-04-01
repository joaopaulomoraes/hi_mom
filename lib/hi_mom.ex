defmodule HiMom do
  alias Langs

  @default_lang :en

  def hi_mom() do
    Langs.lang(@default_lang)
    |> remove_brackets
  end

  def hi_mom(mom_name) do
    hi_mom(mom_name, @default_lang)
  end

  def hi_mom(mom_name, lang) when is_nil(mom_name) do
    Langs.lang(lang)
    |> remove_brackets
  end

  def hi_mom(mom_name, lang) when is_binary(mom_name) do
    Langs.lang(lang)
    |> inject_mom_name(mom_name)
  end

  defp inject_mom_name(grettings, mom_name) do
    grettings
    |> String.replace(~r/{{(.+)}}/, mom_name)
  end

  defp remove_brackets(string) do
    string
    |> String.replace(~r/[{}]{2}/, "")
  end
end
